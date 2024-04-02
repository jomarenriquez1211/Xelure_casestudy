SELECT 
    SUM(`Scheduled Principal`) AS Scheduledprincipal,
    SUM(`Curtailments`) AS Curailments,
    SUM(`Prepayment`) AS Prepayments,
    SUM(`Liquidation Principal`) AS LiquidationPrincipal,
    SUM(`Total Losses`) AS LiquidationLoses,
    SUM(`Scheduled Principal`) + (SUM(`Curtailments`)+sum(`Curtailment Adjustments`)) + SUM(`Prepayment`) + (SUM(`Liquidation Principal`) - SUM(`Principal Losses`)) AS TotalPrinicipalFundsAvailable
FROM 
    citigroupmortageloantrust.loandata2024
WHERE  
    `Distribution Date` LIKE '200708%';
