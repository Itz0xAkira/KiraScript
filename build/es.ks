# Declare a constant variable
frozen kira PI = 3.14159;

# Declare a non-constant variable
kira radius = 5;

# Calculate the area of a circle
kira area = PI * pow(radius, 2);

# Print the area
serve("Area of the circle: ");
serve(area);
serve("\n");

# Declare a list
kira numbers = [1, 2, 3, 4, 5];

# Append a number to the list
append(numbers, 6);

# Print the list
serve("Numbers list: ");
serve(numbers);
serve("\n");

# Access an element in the list
kira thirdNumber = at(numbers, 2);
serve("Third number in the list: ");
serve(thirdNumber);
serve("\n");

# Declare a function
recipe calculateSum(kira a, kira b) {
    kira sum = a + b;
    serve("Sum of ");
    serve(a);
    serve(" and ");
    serve(b);
    serve(" is ");
    serve(sum);
    serve("\n");
    eat;
}

# Call the function
calculateSum(10, 20);

# Conditional statement
if (radius > 0) {
    serve("Radius is positive.\n");
} else {
    serve("Radius is not positive.\n");
}

# Loop through the list
kira i = 0;
while (i < len(numbers)) {
    serve("Element at index ");
    serve(i);
    serve(": ");
    serve(at(numbers, i));
    serve("\n");
    i = i + 1;
}

# Use native functions
kira roundedArea = round(area);
serve("Rounded area: ");
serve(roundedArea);
serve("\n");

# String manipulation
kira message = "Hello, kiraScript!";
serve(message);
serve("\n");

# Boolean operations
kira isPositive = radius > 0;
serve("Is radius positive? ");
serve(isPositive);
serve("\n");

# End of script