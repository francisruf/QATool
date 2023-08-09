using System;
using System.IO;

namespace FileReadingApp
{
    class Program
    {
        static string[] validExtensions = { ".txt", ".ink" };
        static string fileName;
        static string currentDirectory;
        static string filePath;
        static string fileExtension;
        static string[] keywords = { "[IF", "[ELSE", "[DEFAULT" };
        static List<string> allLines;
        static List<string> filteredLines;
        static List<string> properties;


        static void Main(string[] args)
        {
            //string[] validExtensions = { ".txt", ".ink" };
            //string fileName;
            //string currentDirectory;
            //string filePath;
            //string fileExtension;
            //string[] keywords = { "[IF", "[ELSE", "[DEFAULT" };
            //List<string> allLines;
            //List<string> filteredLines;
            //List<string> properties;

            Console.WriteLine("Unreliable Narrators Branch Solver");
            Console.WriteLine("----------------------------------------");
            Console.WriteLine("Place a .ink or a .txt file in the root directory of this app.");
            Console.Write("\nEnter the file name: ");
            fileName = Console.ReadLine();
            currentDirectory = AppDomain.CurrentDomain.BaseDirectory;

            bool validFile = false;
            filePath = CheckFilePath(fileName, currentDirectory, validExtensions, out validFile);

            if (validFile)
            {
                allLines = GetLines(filePath);
                Console.WriteLine("All lines : " + allLines.Count());
                filteredLines = FilterLines(allLines, keywords);
                Console.WriteLine("All lines : " + allLines.Count());
                Console.WriteLine("Filtered Lines : " + filteredLines.Count());

                properties = GeneratePropertiesList(filteredLines);
                WriteToCSV(fileName + "_Branches.csv", properties);
            }

            else
            {
                Console.WriteLine("File not found.");
            }

            // Wait for user input before exiting
            Console.WriteLine("Press any key to close the application.");
            Console.ReadLine();
        }

        static string CheckFilePath(string fileName, string directory, string[] validExtensions, out bool validPath)
        {
            validPath = false;
            string validFilePath = null;

            string filePathWithExtension = Path.Combine(directory, fileName);
            string filePathTxt = Path.Combine(directory, fileName + ".txt");
            string filePathInk = Path.Combine(directory, fileName + ".ink");

            if (validExtensions.Any(extension => filePathWithExtension.EndsWith(extension)))
            {
                if (File.Exists(filePathWithExtension))
                {
                    validFilePath = filePathWithExtension;
                    validPath = true;
                    return validFilePath;
                }
            }

            foreach (string extension in validExtensions)
            {
                if (File.Exists(filePathTxt))
                {
                    validFilePath = filePathTxt;
                    validPath = true;
                    break;
                }
                else if (File.Exists(filePathInk))
                {
                    validFilePath = filePathInk;
                    validPath = true;
                    break;
                }
            }

            return validFilePath;
        }

        static List<string> GetLines(string filePath)
        {
            List<string> lines = new List<string>();

            using (StreamReader reader = new StreamReader(filePath))
            {
                string line;
                while ((line = reader.ReadLine()) != null)
                {
                    lines.Add(line);
                }
            }
            return lines;
        }

        static List<string> FilterLines(List<string> lines, params string[] substrings)
        {
            List<string> filteredLines = new List<string>();

            foreach (string line in lines)
            {
                if (substrings.Any(substring => line.Contains(substring)))
                {
                    filteredLines.Add(line);
                }
            }

            return filteredLines;
        }

        static List<string> GeneratePropertiesList(List<string> filteredLines)
        {
            List<string> propertiesList = new List<string>();

            foreach (string line in filteredLines)
            {
                string tested = "";
                string firstLine = ""; 
                string knot = GetKnot(line, out firstLine); // Replace with actual knot value
                string condition = GetCondition(line); // Use the filtered line string as the condition property

                string properties = $"{tested},{knot},{firstLine},{condition}";
                propertiesList.Add(properties);
            }

            return propertiesList;
        }

        static string GetKnot(string line, out string firstLine)
        {
            string knot = "(Unknown)";
            string targetKnot = "";
            firstLine = "";

            int arrowIndex = line.IndexOf("->");
            if (arrowIndex == -1)
            {
                arrowIndex = line.IndexOf("- >");
            }

            if (arrowIndex != -1)
            {
                int startIndex = arrowIndex + 2; // Start after "->" or "- >"

                // Find the first non-space character after the arrow
                while (startIndex < line.Length && line[startIndex] == ' ')
                {
                    startIndex++;
                }

                int endIndex = line.IndexOf(' ', startIndex); // Find the first space after the arrow
                if (endIndex == -1)
                {
                    endIndex = line.Length; // If no space found, take the rest of the line
                }

                targetKnot = line.Substring(startIndex, endIndex - startIndex);
                knot += targetKnot;
            }

            int lineIndex = 0;
            bool foundKnot = false;


            for (int i = 0; i < allLines.Count(); i++)
            {
                if (allLines[i].Contains("==  " + targetKnot) || allLines[i].Contains("== " + targetKnot) || allLines[i].Contains("==" + targetKnot))
                {
                    knot = targetKnot;
                    lineIndex = i;
                    foundKnot = true;
                    break;
                }
            }

            if (foundKnot)
            {
                foreach (string uniqueLine in allLines.Skip(lineIndex)) // Start searching after the current line
                {
                    //Console.WriteLine($"Checking line: {uniqueLine}");

                    if (uniqueLine.Contains("->") || uniqueLine.Contains("- >"))
                    {
                        //Console.WriteLine($"Found break at : {uniqueLine}");
                        break;
                    }
                        

                    if (uniqueLine.TrimStart().StartsWith("#SPEAKER:")) // Check for speaker lines with leading whitespace
                    {
                        int speakerIndex = "#SPEAKER:".Length + uniqueLine.IndexOf("#SPEAKER:");
                        firstLine += uniqueLine.Substring(speakerIndex).Trim().ToUpper();
                        firstLine += ": ";
                        //Console.WriteLine($"Speaker found: {firstLine}");
                    }

                    if (uniqueLine.Contains("#LINEID"))
                    {
                        firstLine += uniqueLine; // Store the line with #LINEID
                        //Console.WriteLine($"Line with #LINEID: {firstLine}");
                        break; // Exit the loop after finding the line
                    }
                }
            }

            return knot;
        }

        static string GetCondition(string line)
        {
            int openBracketIndex = line.IndexOf("[");
            int closeBracketIndex = line.IndexOf("]");

            if (openBracketIndex != -1 && closeBracketIndex != -1 && closeBracketIndex > openBracketIndex)
            {
                int startIndex = openBracketIndex + 1; // Start after "["
                int endIndex = closeBracketIndex; // End before "]"

                string extractedCondition = line.Substring(startIndex, endIndex - startIndex);
                return extractedCondition;
            }

            return line;
        }

        static void WriteToConsole(List<string> lines)
        {
            foreach (var line in lines)
            {
                Console.WriteLine(line);
            }
        }

        static void WriteToCSV(string fileName, List<string> propertiesList)
        {
            string currentDirectory = AppDomain.CurrentDomain.BaseDirectory;
            string outputPath = Path.Combine(currentDirectory, fileName);

            using (StreamWriter writer = new StreamWriter(outputPath))
            {
                // Write the header row with property names
                writer.WriteLine("Tested,Knot,First Line,Condition"); // Adjust property names as needed

                foreach (string properties in propertiesList)
                {
                    // If any property contains a comma or double quote, enclose them in double quotes
                    string[] propertyValues = properties.Split(',');
                    for (int i = 0; i < propertyValues.Length; i++)
                    {
                        if (propertyValues[i].Contains(",") || propertyValues[i].Contains("\""))
                        {
                            propertyValues[i] = $"\"{propertyValues[i].Replace("\"", "\"\"")}\"";
                        }
                    }

                    string csvLine = string.Join(",", propertyValues);
                    writer.WriteLine(csvLine);
                }
            }

            Console.WriteLine($"Properties written to {outputPath}");
        }
    }
}
