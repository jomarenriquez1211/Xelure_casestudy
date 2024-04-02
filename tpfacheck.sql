SELECT 
    SUM(DISTINCT ScheduledPrincipal) AS ScheduledPrincipal,
    SUM(DISTINCT Curtailments) AS Curtailments,
    SUM(DISTINCT Prepayments) AS Prepayments,
    SUM(DISTINCT NetLiquidation) AS NetLiquidation,
    SUM(DISTINCT Repurchased) AS Repurchased,
    SUM(DISTINCT ScheduledPrincipal) + SUM(DISTINCT Curtailments) + SUM(DISTINCT Prepayments) + SUM(DISTINCT NetLiquidation) AS TotalPrinicipalFundsAvailable
FROM 
    holderstatement.tpfa2024
WHERE  
    DistributionDate LIKE '2007-08%';

