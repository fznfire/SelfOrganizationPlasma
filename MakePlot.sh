echo "Compiling the ElectricField.f90"
gfortran ElectricField.f90 -o Field.exe
echo "Complied ElectridField into Field.exe"
echo "Now running Field.exe. The final result will be exported to Data.txt"
./Field.exe>>Data.txt
echo "Plotting the file using python wrapper."

python Plot.py
