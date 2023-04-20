Decimal add = Calculator.dynamicCalculationMethod(10, 67.5, 'ADDITION');
system.debug(add);
Decimal subtraction = Calculator.dynamicCalculationMethod(90, 60, 'SUBTRACTION');
System.debug(subtraction);
Decimal division = Calculator.dynamicCalculationMethod(8, 2, 'DIVISION');
System.debug(division);
Decimal multiplication = Calculator.dynamicCalculationMethod(6, 4, 'MULTIPLICATION');
System.debug(multiplication);



CreateCaseQueueable quess = new CreateCaseQueueable();
 Id jobId = System.enqueueJob(quess);
 system.debug(jobId);