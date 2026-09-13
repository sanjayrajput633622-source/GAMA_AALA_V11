.class public Landroidx/constraintlayout/core/LinearSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/LinearSystem$Row;,
        Landroidx/constraintlayout/core/LinearSystem$ValuesRow;
    }
.end annotation


# static fields
.field public static ARRAY_ROW_CREATION:J = 0x0L

.field public static final DEBUG:Z = false

.field private static final DEBUG_CONSTRAINTS:Z = false

.field public static final FULL_DEBUG:Z = false

.field public static final MEASURE:Z = false

.field public static OPTIMIZED_ARRAY_ROW_CREATION:J = 0x0L

.field public static OPTIMIZED_ENGINE:Z = false

.field private static POOL_SIZE:I = 0x3e8

.field public static SIMPLIFY_SYNONYMS:Z = true

.field public static SKIP_COLUMNS:Z = true

.field public static USE_BASIC_SYNONYMS:Z = true

.field public static USE_DEPENDENCY_ORDERING:Z = false

.field public static USE_SYNONYMS:Z = true

.field public static sMetrics:Landroidx/constraintlayout/core/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field public hasSimpleDefinition:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/core/Cache;

.field private mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/core/ArrayRow;

.field private mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 12
    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 16
    .line 17
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 24
    .line 25
    new-array v1, v2, [Z

    .line 26
    .line 27
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 31
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 33
    .line 34
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 35
    .line 36
    sget v1, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    .line 37
    .line 38
    new-array v1, v1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 41
    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 43
    .line 44
    new-array v0, v2, [Landroidx/constraintlayout/core/ArrayRow;

    .line 45
    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->releaseRows()V

    .line 50
    .line 51
    new-instance v0, Landroidx/constraintlayout/core/Cache;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Landroidx/constraintlayout/core/Cache;-><init>()V

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 57
    .line 58
    new-instance v1, Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 62
    .line 63
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 64
    .line 65
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    new-instance v1, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    .line 73
    .line 74
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 75
    return-void

    .line 76
    .line 77
    :cond_0
    new-instance v1, Landroidx/constraintlayout/core/ArrayRow;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 81
    .line 82
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 83
    return-void
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 28
    .line 29
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 30
    .line 31
    sget p2, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    .line 32
    .line 33
    if-lt p1, p2, :cond_1

    .line 34
    .line 35
    mul-int/lit8 p2, p2, 0x2

    .line 36
    .line 37
    sput p2, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 46
    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    .line 51
    iget p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 52
    .line 53
    add-int/lit8 v1, p2, 0x1

    .line 54
    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 56
    .line 57
    aput-object v0, p1, p2

    .line 58
    return-object v0
.end method

.method private addError(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 5
    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 7

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    .line 12
    iget p1, p1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 19
    .line 20
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 21
    .line 22
    aput-object p1, v0, v1

    .line 23
    .line 24
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 25
    .line 26
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 34
    .line 35
    :goto_0
    sget-boolean p1, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    .line 36
    .line 37
    if-eqz p1, :cond_8

    .line 38
    .line 39
    iget-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 40
    .line 41
    if-eqz p1, :cond_8

    .line 42
    const/4 p1, 0x0

    .line 43
    move v0, p1

    .line 44
    .line 45
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 46
    .line 47
    if-ge v0, v1, :cond_7

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 50
    .line 51
    aget-object v1, v1, v0

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 56
    .line 57
    const-string v2, "WTF"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 63
    .line 64
    aget-object v1, v1, v0

    .line 65
    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 69
    .line 70
    if-eqz v2, :cond_6

    .line 71
    .line 72
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 73
    .line 74
    iget v3, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 78
    .line 79
    sget-boolean v2, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 84
    .line 85
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 89
    goto :goto_2

    .line 90
    .line 91
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 92
    .line 93
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 97
    .line 98
    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 99
    const/4 v2, 0x0

    .line 100
    .line 101
    aput-object v2, v1, v0

    .line 102
    .line 103
    add-int/lit8 v1, v0, 0x1

    .line 104
    move v3, v1

    .line 105
    .line 106
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 107
    .line 108
    if-ge v1, v4, :cond_4

    .line 109
    .line 110
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 111
    .line 112
    add-int/lit8 v4, v1, -0x1

    .line 113
    .line 114
    aget-object v5, v3, v1

    .line 115
    .line 116
    aput-object v5, v3, v4

    .line 117
    .line 118
    iget-object v3, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 119
    .line 120
    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 121
    .line 122
    if-ne v5, v1, :cond_3

    .line 123
    .line 124
    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 125
    .line 126
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 127
    move v6, v3

    .line 128
    move v3, v1

    .line 129
    move v1, v6

    .line 130
    goto :goto_3

    .line 131
    .line 132
    :cond_4
    if-ge v3, v4, :cond_5

    .line 133
    .line 134
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 135
    .line 136
    aput-object v2, v1, v3

    .line 137
    .line 138
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 139
    .line 140
    iput v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 141
    .line 142
    add-int/lit8 v0, v0, -0x1

    .line 143
    .line 144
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 145
    goto :goto_1

    .line 146
    .line 147
    :cond_7
    iput-boolean p1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 148
    :cond_8
    return-void
.end method

.method private addSingleError(Landroidx/constraintlayout/core/ArrayRow;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    return-void
.end method

.method private computeValues()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 12
    .line 13
    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 14
    .line 15
    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private createVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->variables:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->variables:J

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 31
    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 37
    .line 38
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 43
    .line 44
    iput v0, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashMap;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 65
    .line 66
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 67
    .line 68
    aput-object p2, p1, v0

    .line 69
    return-object p2
.end method

.method private displayRows()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 9
    .line 10
    const-string v3, "\n"

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 23
    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private displaySolverVariables()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Display Rows ("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "x"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ")\n"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private enforceBFS(Landroidx/constraintlayout/core/LinearSystem$Row;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 6
    .line 7
    if-ge v2, v3, :cond_17

    .line 8
    .line 9
    iget-object v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 10
    .line 11
    aget-object v3, v3, v2

    .line 12
    .line 13
    iget-object v4, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    .line 15
    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 16
    .line 17
    sget-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 18
    .line 19
    if-ne v4, v5, :cond_1

    .line 20
    .line 21
    :cond_0
    const/16 p1, 0x0

    .line 22
    .line 23
    goto/16 :goto_c

    .line 24
    .line 25
    :cond_1
    iget v3, v3, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    cmpg-float v3, v3, v4

    .line 29
    .line 30
    if-gez v3, :cond_0

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    :goto_1
    if-nez v2, :cond_16

    .line 35
    .line 36
    sget-object v5, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 37
    .line 38
    const-wide/16 v6, 0x1

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    iget-wide v8, v5, Landroidx/constraintlayout/core/Metrics;->bfs:J

    .line 43
    add-long/2addr v8, v6

    .line 44
    .line 45
    iput-wide v8, v5, Landroidx/constraintlayout/core/Metrics;->bfs:J

    .line 46
    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    .line 50
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, -0x1

    .line 53
    const/4 v11, -0x1

    .line 54
    const/4 v12, 0x0

    .line 55
    .line 56
    :goto_2
    iget v13, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 57
    const/4 v14, 0x1

    .line 58
    .line 59
    if-ge v9, v13, :cond_12

    .line 60
    .line 61
    iget-object v13, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 62
    .line 63
    aget-object v13, v13, v9

    .line 64
    .line 65
    iget-object v15, v13, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 66
    .line 67
    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 68
    .line 69
    const/16 p1, 0x0

    .line 70
    .line 71
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 72
    .line 73
    if-ne v15, v1, :cond_3

    .line 74
    goto :goto_6

    .line 75
    .line 76
    :cond_3
    iget-boolean v1, v13, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    goto :goto_6

    .line 80
    .line 81
    :cond_4
    iget v1, v13, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 82
    .line 83
    cmpg-float v1, v1, v4

    .line 84
    .line 85
    if-gez v1, :cond_a

    .line 86
    .line 87
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->SKIP_COLUMNS:Z

    .line 88
    .line 89
    const/16 v15, 0x9

    .line 90
    .line 91
    if-eqz v1, :cond_b

    .line 92
    .line 93
    iget-object v1, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 94
    .line 95
    .line 96
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 97
    move-result v1

    .line 98
    .line 99
    move/from16 v14, p1

    .line 100
    .line 101
    :goto_3
    if-ge v14, v1, :cond_a

    .line 102
    .line 103
    move/from16 v16, v4

    .line 104
    .line 105
    iget-object v4, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 106
    .line 107
    .line 108
    invoke-interface {v4, v14}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    move-wide/from16 v17, v6

    .line 112
    .line 113
    iget-object v6, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 114
    .line 115
    .line 116
    invoke-interface {v6, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 117
    move-result v6

    .line 118
    .line 119
    cmpg-float v7, v6, v16

    .line 120
    .line 121
    if-gtz v7, :cond_5

    .line 122
    goto :goto_5

    .line 123
    .line 124
    :cond_5
    move/from16 v7, p1

    .line 125
    .line 126
    :goto_4
    if-ge v7, v15, :cond_9

    .line 127
    .line 128
    iget-object v5, v4, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    .line 129
    .line 130
    aget v5, v5, v7

    .line 131
    div-float/2addr v5, v6

    .line 132
    .line 133
    cmpg-float v19, v5, v8

    .line 134
    .line 135
    if-gez v19, :cond_6

    .line 136
    .line 137
    if-eq v7, v12, :cond_7

    .line 138
    .line 139
    :cond_6
    if-le v7, v12, :cond_8

    .line 140
    .line 141
    :cond_7
    iget v8, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 142
    move v12, v7

    .line 143
    move v11, v8

    .line 144
    move v10, v9

    .line 145
    move v8, v5

    .line 146
    .line 147
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 148
    goto :goto_4

    .line 149
    .line 150
    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 151
    .line 152
    move/from16 v4, v16

    .line 153
    .line 154
    move-wide/from16 v6, v17

    .line 155
    goto :goto_3

    .line 156
    .line 157
    :cond_a
    :goto_6
    move/from16 v16, v4

    .line 158
    .line 159
    move-wide/from16 v17, v6

    .line 160
    goto :goto_a

    .line 161
    .line 162
    :cond_b
    move/from16 v16, v4

    .line 163
    .line 164
    move-wide/from16 v17, v6

    .line 165
    .line 166
    :goto_7
    iget v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 167
    .line 168
    if-ge v14, v1, :cond_11

    .line 169
    .line 170
    iget-object v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 171
    .line 172
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 173
    .line 174
    aget-object v1, v1, v14

    .line 175
    .line 176
    iget-object v4, v13, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 177
    .line 178
    .line 179
    invoke-interface {v4, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 180
    move-result v4

    .line 181
    .line 182
    cmpg-float v5, v4, v16

    .line 183
    .line 184
    if-gtz v5, :cond_c

    .line 185
    goto :goto_9

    .line 186
    .line 187
    :cond_c
    move/from16 v5, p1

    .line 188
    .line 189
    :goto_8
    if-ge v5, v15, :cond_10

    .line 190
    .line 191
    iget-object v6, v1, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    .line 192
    .line 193
    aget v6, v6, v5

    .line 194
    div-float/2addr v6, v4

    .line 195
    .line 196
    cmpg-float v7, v6, v8

    .line 197
    .line 198
    if-gez v7, :cond_d

    .line 199
    .line 200
    if-eq v5, v12, :cond_e

    .line 201
    .line 202
    :cond_d
    if-le v5, v12, :cond_f

    .line 203
    :cond_e
    move v12, v5

    .line 204
    move v8, v6

    .line 205
    move v10, v9

    .line 206
    move v11, v14

    .line 207
    .line 208
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 209
    goto :goto_8

    .line 210
    .line 211
    :cond_10
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 212
    goto :goto_7

    .line 213
    .line 214
    :cond_11
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 215
    .line 216
    move/from16 v4, v16

    .line 217
    .line 218
    move-wide/from16 v6, v17

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :cond_12
    move/from16 v16, v4

    .line 223
    .line 224
    move-wide/from16 v17, v6

    .line 225
    .line 226
    const/16 p1, 0x0

    .line 227
    const/4 v1, -0x1

    .line 228
    .line 229
    if-eq v10, v1, :cond_14

    .line 230
    .line 231
    iget-object v4, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 232
    .line 233
    aget-object v4, v4, v10

    .line 234
    .line 235
    iget-object v5, v4, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 236
    .line 237
    iput v1, v5, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 238
    .line 239
    sget-object v1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 240
    .line 241
    if-eqz v1, :cond_13

    .line 242
    .line 243
    iget-wide v5, v1, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 244
    .line 245
    add-long v5, v5, v17

    .line 246
    .line 247
    iput-wide v5, v1, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 248
    .line 249
    :cond_13
    iget-object v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 250
    .line 251
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 252
    .line 253
    aget-object v1, v1, v11

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 257
    .line 258
    iget-object v1, v4, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 259
    .line 260
    iput v10, v1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v0, v4}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 264
    goto :goto_b

    .line 265
    :cond_14
    move v2, v14

    .line 266
    .line 267
    :goto_b
    iget v1, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 268
    .line 269
    div-int/lit8 v1, v1, 0x2

    .line 270
    .line 271
    if-le v3, v1, :cond_15

    .line 272
    move v2, v14

    .line 273
    .line 274
    :cond_15
    move/from16 v4, v16

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    :cond_16
    return v3

    .line 278
    .line 279
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_17
    const/16 p1, 0x0

    .line 284
    return p1
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x4

    .line 3
    .line 4
    div-int/lit16 v0, p1, 0x400

    .line 5
    .line 6
    div-int/lit16 v1, v0, 0x400

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, " Mb"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_0
    if-lez v0, :cond_1

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, " Kb"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p1, " bytes"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "LOW"

    .line 6
    return-object p1

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const-string p1, "MEDIUM"

    .line 12
    return-object p1

    .line 13
    :cond_1
    const/4 v0, 0x3

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    const-string p1, "HIGH"

    .line 18
    return-object p1

    .line 19
    :cond_2
    const/4 v0, 0x4

    .line 20
    .line 21
    if-ne p1, v0, :cond_3

    .line 22
    .line 23
    const-string p1, "HIGHEST"

    .line 24
    return-object p1

    .line 25
    :cond_3
    const/4 v0, 0x5

    .line 26
    .line 27
    if-ne p1, v0, :cond_4

    .line 28
    .line 29
    const-string p1, "EQUALITY"

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_4
    const/16 v0, 0x8

    .line 33
    .line 34
    if-ne p1, v0, :cond_5

    .line 35
    .line 36
    const-string p1, "FIXED"

    .line 37
    return-object p1

    .line 38
    :cond_5
    const/4 v0, 0x6

    .line 39
    .line 40
    if-ne p1, v0, :cond_6

    .line 41
    .line 42
    const-string p1, "BARRIER"

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_6
    const-string p1, "NONE"

    .line 46
    return-object p1
.end method

.method public static getMetrics()Landroidx/constraintlayout/core/Metrics;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    return-object v0
.end method

.method private increaseTableSize()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, [Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    .line 22
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    .line 30
    iput-object v1, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 31
    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 33
    .line 34
    new-array v1, v0, [Z

    .line 35
    .line 36
    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 37
    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 41
    .line 42
    sget-object v1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    .line 47
    .line 48
    const-wide/16 v4, 0x1

    .line 49
    add-long/2addr v2, v4

    .line 50
    .line 51
    iput-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    .line 52
    .line 53
    iget-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    .line 54
    int-to-long v4, v0

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 58
    move-result-wide v2

    .line 59
    .line 60
    iput-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    .line 61
    .line 62
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 63
    .line 64
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    .line 65
    .line 66
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->lastTableSize:J

    .line 67
    :cond_0
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I
    .locals 12

    .line 1
    .line 2
    sget-object p2, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-wide v2, p2, Landroidx/constraintlayout/core/Metrics;->optimize:J

    .line 9
    add-long/2addr v2, v0

    .line 10
    .line 11
    iput-wide v2, p2, Landroidx/constraintlayout/core/Metrics;->optimize:J

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    move v2, p2

    .line 14
    .line 15
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 16
    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 20
    .line 21
    aput-boolean p2, v3, v2

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v2, p2

    .line 26
    move v3, v2

    .line 27
    .line 28
    :cond_2
    :goto_1
    if-nez v2, :cond_e

    .line 29
    .line 30
    sget-object v4, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    iget-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->iterations:J

    .line 35
    add-long/2addr v5, v0

    .line 36
    .line 37
    iput-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->iterations:J

    .line 38
    .line 39
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 42
    .line 43
    mul-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    if-lt v3, v4, :cond_4

    .line 46
    goto :goto_2

    .line 47
    .line 48
    .line 49
    :cond_4
    invoke-interface {p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x1

    .line 52
    .line 53
    if-eqz v4, :cond_5

    .line 54
    .line 55
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 62
    .line 63
    aput-boolean v5, v4, v6

    .line 64
    .line 65
    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/core/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    if-eqz v4, :cond_7

    .line 72
    .line 73
    iget-object v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 74
    .line 75
    iget v7, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 76
    .line 77
    aget-boolean v8, v6, v7

    .line 78
    .line 79
    if-eqz v8, :cond_6

    .line 80
    :goto_2
    return v3

    .line 81
    .line 82
    :cond_6
    aput-boolean v5, v6, v7

    .line 83
    .line 84
    :cond_7
    if-eqz v4, :cond_d

    .line 85
    const/4 v5, -0x1

    .line 86
    .line 87
    .line 88
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 89
    move v7, p2

    .line 90
    move v8, v5

    .line 91
    .line 92
    :goto_3
    iget v9, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 93
    .line 94
    if-ge v7, v9, :cond_b

    .line 95
    .line 96
    iget-object v9, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 97
    .line 98
    aget-object v9, v9, v7

    .line 99
    .line 100
    iget-object v10, v9, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 101
    .line 102
    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 103
    .line 104
    sget-object v11, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 105
    .line 106
    if-ne v10, v11, :cond_8

    .line 107
    goto :goto_4

    .line 108
    .line 109
    :cond_8
    iget-boolean v10, v9, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 110
    .line 111
    if-eqz v10, :cond_9

    .line 112
    goto :goto_4

    .line 113
    .line 114
    .line 115
    :cond_9
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/core/ArrayRow;->hasVariable(Landroidx/constraintlayout/core/SolverVariable;)Z

    .line 116
    move-result v10

    .line 117
    .line 118
    if-eqz v10, :cond_a

    .line 119
    .line 120
    iget-object v10, v9, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 121
    .line 122
    .line 123
    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 124
    move-result v10

    .line 125
    const/4 v11, 0x0

    .line 126
    .line 127
    cmpg-float v11, v10, v11

    .line 128
    .line 129
    if-gez v11, :cond_a

    .line 130
    .line 131
    iget v9, v9, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 132
    neg-float v9, v9

    .line 133
    div-float/2addr v9, v10

    .line 134
    .line 135
    cmpg-float v10, v9, v6

    .line 136
    .line 137
    if-gez v10, :cond_a

    .line 138
    move v8, v7

    .line 139
    move v6, v9

    .line 140
    .line 141
    :cond_a
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_b
    if-le v8, v5, :cond_2

    .line 145
    .line 146
    iget-object v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 147
    .line 148
    aget-object v6, v6, v8

    .line 149
    .line 150
    iget-object v7, v6, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 151
    .line 152
    iput v5, v7, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 153
    .line 154
    sget-object v5, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 155
    .line 156
    if-eqz v5, :cond_c

    .line 157
    .line 158
    iget-wide v9, v5, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 159
    add-long/2addr v9, v0

    .line 160
    .line 161
    iput-wide v9, v5, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 162
    .line 163
    .line 164
    :cond_c
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 165
    .line 166
    iget-object v4, v6, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 167
    .line 168
    iput v8, v4, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, p0, v6}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    :cond_d
    move v2, v5

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    :cond_e
    return v3
.end method

.method private releaseRows()V
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 9
    .line 10
    if-ge v2, v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 13
    .line 14
    aget-object v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 19
    .line 20
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 26
    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 33
    .line 34
    if-ge v2, v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 37
    .line 38
    aget-object v0, v0, v2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 43
    .line 44
    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 50
    .line 51
    aput-object v1, v0, v2

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 16
    move-result-object v6

    .line 17
    .line 18
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 26
    move-result-object v8

    .line 27
    .line 28
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 32
    move-result-object v7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 36
    move-result-object v13

    .line 37
    .line 38
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 46
    move-result-object v9

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 62
    move-result-object v10

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 78
    move-result-object v11

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 82
    move-result-object v7

    .line 83
    .line 84
    move/from16 v2, p3

    .line 85
    float-to-double v4, v2

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 89
    move-result-wide v14

    .line 90
    .line 91
    move/from16 v2, p4

    .line 92
    .line 93
    move-object/from16 p1, v1

    .line 94
    int-to-double v1, v2

    .line 95
    mul-double/2addr v14, v1

    .line 96
    double-to-float v12, v14

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/core/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 103
    move-wide v7, v4

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    .line 110
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 111
    move-result-wide v7

    .line 112
    mul-double/2addr v7, v1

    .line 113
    double-to-float v10, v7

    .line 114
    .line 115
    move-object/from16 v8, p1

    .line 116
    move-object v9, v3

    .line 117
    move-object v7, v13

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/core/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 124
    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 9

    .line 1
    .line 2
    move/from16 v0, p8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    .line 14
    move/from16 v8, p7

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/core/ArrayRow;->createRowCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 18
    .line 19
    const/16 p1, 0x8

    .line 20
    .line 21
    if-eq v0, p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 28
    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 7
    .line 8
    const-wide/16 v1, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    .line 13
    add-long/2addr v3, v1

    .line 14
    .line 15
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    .line 16
    .line 17
    iget-boolean v3, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    .line 22
    add-long/2addr v3, v1

    .line 23
    .line 24
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 27
    const/4 v3, 0x1

    .line 28
    add-int/2addr v0, v3

    .line 29
    .line 30
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 31
    .line 32
    if-ge v0, v4, :cond_2

    .line 33
    .line 34
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 35
    add-int/2addr v0, v3

    .line 36
    .line 37
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 38
    .line 39
    if-lt v0, v4, :cond_3

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 43
    .line 44
    :cond_3
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 45
    const/4 v4, 0x0

    .line 46
    .line 47
    if-nez v0, :cond_c

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSystem(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->isEmpty()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->ensurePositiveConstant()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/ArrayRow;->chooseSubject(Landroidx/constraintlayout/core/LinearSystem;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_9

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iput-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 74
    .line 75
    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 79
    .line 80
    iget v6, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 81
    add-int/2addr v5, v3

    .line 82
    .line 83
    if-ne v6, v5, :cond_9

    .line 84
    .line 85
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 86
    .line 87
    .line 88
    invoke-interface {v4, p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    .line 89
    .line 90
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I

    .line 94
    .line 95
    iget v4, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 96
    const/4 v5, -0x1

    .line 97
    .line 98
    if-ne v4, v5, :cond_a

    .line 99
    .line 100
    iget-object v4, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 101
    .line 102
    if-ne v4, v0, :cond_6

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/ArrayRow;->pickPivot(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    sget-object v4, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 111
    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    iget-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 115
    add-long/2addr v5, v1

    .line 116
    .line 117
    iput-wide v5, v4, Landroidx/constraintlayout/core/Metrics;->pivots:J

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 121
    .line 122
    :cond_6
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 123
    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    .line 130
    .line 131
    :cond_7
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 136
    .line 137
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 144
    .line 145
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 146
    .line 147
    .line 148
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 149
    .line 150
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 151
    sub-int/2addr v0, v3

    .line 152
    .line 153
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 154
    goto :goto_1

    .line 155
    :cond_9
    move v3, v4

    .line 156
    .line 157
    .line 158
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->hasKeyVariable()Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-nez v0, :cond_b

    .line 162
    goto :goto_2

    .line 163
    :cond_b
    move v4, v3

    .line 164
    .line 165
    :cond_c
    if-nez v4, :cond_d

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 169
    :cond_d
    :goto_2
    return-void
.end method

.method public addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    if-ne p4, v1, :cond_0

    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowEquals(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    if-eq p4, v1, :cond_1

    .line 5
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-object v0
.end method

.method public addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 5

    .line 7
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    if-ne v0, v1, :cond_2

    int-to-float p2, p2

    .line 8
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 11
    iget-boolean v3, v1, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v3, :cond_0

    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v3, v4, :cond_0

    .line 12
    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 13
    :cond_2
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    if-eq v0, v1, :cond_5

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v1, v0

    .line 15
    iget-boolean v1, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_3

    int-to-float p1, p2

    .line 16
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    return-void

    .line 17
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_4

    .line 18
    iput-boolean v2, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    int-to-float p1, p2

    .line 19
    iput p1, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    return-void

    .line 20
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow;->createRowEquals(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 22
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void

    .line 23
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 25
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 18
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    if-eq p4, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 24
    move-result p1

    .line 25
    .line 26
    const/high16 p2, -0x40800000    # -1.0f

    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 35
    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 18
    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    if-eq p4, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 24
    move-result p1

    .line 25
    .line 26
    const/high16 p2, -0x40800000    # -1.0f

    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 35
    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 4
    move-result-object v0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    .line 13
    .line 14
    const/16 p1, 0x8

    .line 15
    .line 16
    if-eq p6, p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, p6}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 23
    return-void
.end method

.method public addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p3

    .line 3
    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/core/ArrayRow;->addSingleError(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    return-void
.end method

.method public addSynonym(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    if-nez p3, :cond_2

    .line 8
    .line 9
    iget-boolean p3, p2, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget-object p3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 14
    .line 15
    iget-object p3, p3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 16
    .line 17
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 18
    .line 19
    aget-object p2, p3, p2

    .line 20
    .line 21
    :cond_0
    iget-boolean p3, p1, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 26
    .line 27
    iget-object p2, p2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    .line 29
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 30
    .line 31
    aget-object p1, p2, p1

    .line 32
    return-void

    .line 33
    :cond_1
    const/4 p3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0, p2, p3}, Landroidx/constraintlayout/core/SolverVariable;->setSynonym(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 37
    return-void

    .line 38
    .line 39
    :cond_2
    const/16 v0, 0x8

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 43
    return-void
.end method

.method public final cleanupRows()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iput-boolean v3, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 21
    .line 22
    :cond_0
    iget-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    .line 28
    iget v4, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 29
    .line 30
    iput v4, v2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 34
    move v2, v0

    .line 35
    .line 36
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 37
    .line 38
    add-int/lit8 v5, v4, -0x1

    .line 39
    .line 40
    if-ge v2, v5, :cond_1

    .line 41
    .line 42
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 43
    .line 44
    add-int/lit8 v5, v2, 0x1

    .line 45
    .line 46
    aget-object v6, v4, v5

    .line 47
    .line 48
    aput-object v6, v4, v2

    .line 49
    move v2, v5

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 53
    .line 54
    add-int/lit8 v5, v4, -0x1

    .line 55
    const/4 v6, 0x0

    .line 56
    .line 57
    aput-object v6, v2, v5

    .line 58
    .line 59
    add-int/lit8 v4, v4, -0x1

    .line 60
    .line 61
    iput v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 62
    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    sget-boolean v2, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 70
    .line 71
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 78
    .line 79
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 80
    .line 81
    .line 82
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 83
    :cond_3
    :goto_2
    add-int/2addr v0, v3

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->errors:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->errors:J

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 23
    .line 24
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 35
    .line 36
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 41
    .line 42
    iput v0, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 43
    .line 44
    iput p1, p2, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 47
    .line 48
    iget-object p1, p1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 49
    .line 50
    aput-object p2, p1, v0

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/LinearSystem$Row;->addError(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 56
    return-object p2
.end method

.method public createExtraVariable()Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 23
    .line 24
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 36
    .line 37
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 42
    .line 43
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    aput-object v0, v2, v1

    .line 50
    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 11
    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 16
    .line 17
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    if-eqz v1, :cond_6

    .line 20
    .line 21
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 39
    const/4 v1, -0x1

    .line 40
    .line 41
    if-eq p1, v1, :cond_4

    .line 42
    .line 43
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 44
    .line 45
    if-gt p1, v2, :cond_4

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 48
    .line 49
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    .line 51
    aget-object v2, v2, p1

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-object v0

    .line 56
    .line 57
    :cond_4
    :goto_0
    if-eq p1, v1, :cond_5

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    .line 61
    .line 62
    :cond_5
    iget p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    iput p1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 67
    .line 68
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 73
    .line 74
    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 75
    .line 76
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 77
    .line 78
    iput-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 81
    .line 82
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 83
    .line 84
    aput-object v0, v1, p1

    .line 85
    :cond_6
    return-object v0
.end method

.method public createRow()Landroidx/constraintlayout/core/ArrayRow;
    .locals 5

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 3
    .line 4
    const-wide/16 v1, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    .line 26
    .line 27
    sget-wide v3, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    .line 28
    add-long/2addr v3, v1

    .line 29
    .line 30
    sput-wide v3, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->reset()V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 50
    .line 51
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v3}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 55
    .line 56
    sget-wide v3, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    .line 57
    add-long/2addr v3, v1

    .line 58
    .line 59
    sput-wide v3, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->reset()V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable;->increaseErrorId()V

    .line 67
    return-object v0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    .line 23
    .line 24
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 36
    .line 37
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 42
    .line 43
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    aput-object v0, v2, v1

    .line 50
    return-object v0
.end method

.method public displayReadableRows()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    const-string v1, " num vars "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "\n"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    .line 31
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    const-string v5, " = "

    .line 36
    .line 37
    const-string v6, "] => "

    .line 38
    .line 39
    if-ge v3, v4, :cond_1

    .line 40
    .line 41
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 42
    .line 43
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 44
    .line 45
    aget-object v4, v4, v3

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    iget-boolean v7, v4, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 50
    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, " $["

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    iget v0, v4, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    move v3, v2

    .line 108
    .line 109
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 110
    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    if-ge v3, v4, :cond_3

    .line 114
    .line 115
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 116
    .line 117
    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 118
    .line 119
    aget-object v7, v4, v3

    .line 120
    .line 121
    if-eqz v7, :cond_2

    .line 122
    .line 123
    iget-boolean v8, v7, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 124
    .line 125
    if-eqz v8, :cond_2

    .line 126
    .line 127
    iget v8, v7, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 128
    .line 129
    aget-object v4, v4, v8

    .line 130
    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v0, " ~["

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v0, " + "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    iget v0, v7, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 177
    goto :goto_1

    .line 178
    .line 179
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v0, "\n\n #  "

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    :goto_2
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 197
    .line 198
    if-ge v2, v3, :cond_4

    .line 199
    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 209
    .line 210
    aget-object v0, v0, v2

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v0, "\n #  "

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    add-int/lit8 v2, v2, 0x1

    .line 241
    goto :goto_2

    .line 242
    .line 243
    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 244
    .line 245
    if-eqz v2, :cond_5

    .line 246
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v0, "Goal: "

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    :cond_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public displaySystemInformation()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 6
    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 10
    .line 11
    aget-object v3, v3, v1

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    .line 17
    move-result v3

    .line 18
    add-int/2addr v2, v3

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, v0

    .line 23
    move v3, v1

    .line 24
    .line 25
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 26
    .line 27
    if-ge v1, v4, :cond_3

    .line 28
    .line 29
    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 30
    .line 31
    aget-object v4, v4, v1

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    .line 37
    move-result v4

    .line 38
    add-int/2addr v3, v4

    .line 39
    .line 40
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v5, "Linear System -> Table size: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v5, " ("

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    .line 66
    mul-int/2addr v5, v5

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v5}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v5, ") -- row sizes: "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v2}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, ", actual size: "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v2, " rows: "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v2, "/"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v3, " cols: "

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v2, " "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, " occupied cells, "

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 9
    .line 10
    const-string v3, "\n"

    .line 11
    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 15
    .line 16
    aget-object v2, v2, v1

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 21
    .line 22
    sget-object v4, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 23
    .line 24
    if-ne v2, v4, :cond_0

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 35
    .line 36
    aget-object v0, v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/core/Metrics;)V
    .locals 0

    .line 1
    .line 2
    sput-object p1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    return-void
.end method

.method public getCache()Landroidx/constraintlayout/core/Cache;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 3
    return-object v0
.end method

.method public getGoal()Landroidx/constraintlayout/core/LinearSystem$Row;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 3
    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 5
    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 9
    .line 10
    aget-object v2, v2, v0

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v1
.end method

.method public getNumEquations()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 3
    return v0
.end method

.method public getNumVariables()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 3
    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 11
    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    add-float/2addr p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getRow(I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public getValueFor(Ljava/lang/String;)F
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 13
    return p1
.end method

.method public getVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    return-object v0
.end method

.method public minimize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    const-wide/16 v1, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    .line 9
    add-long/2addr v3, v1

    .line 10
    .line 11
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/constraintlayout/core/LinearSystem$Row;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    .line 38
    return-void

    .line 39
    .line 40
    :cond_3
    :goto_0
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    .line 45
    add-long/2addr v3, v1

    .line 46
    .line 47
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    .line 48
    :cond_4
    const/4 v0, 0x0

    .line 49
    .line 50
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 51
    .line 52
    if-ge v0, v3, :cond_6

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 55
    .line 56
    aget-object v3, v3, v0

    .line 57
    .line 58
    iget-boolean v3, v3, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 59
    .line 60
    if-nez v3, :cond_5

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    .line 66
    return-void

    .line 67
    .line 68
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_6
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    iget-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    .line 76
    add-long/2addr v3, v1

    .line 77
    .line 78
    iput-wide v3, v0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    .line 79
    .line 80
    .line 81
    :cond_7
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    .line 82
    return-void
.end method

.method public minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    add-long/2addr v1, v3

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    .line 12
    .line 13
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    .line 14
    .line 15
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 16
    int-to-long v3, v3

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    .line 23
    .line 24
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 25
    .line 26
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    .line 27
    .line 28
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 29
    int-to-long v3, v3

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->enforceBFS(Landroidx/constraintlayout/core/LinearSystem$Row;)I

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    .line 46
    return-void
.end method

.method public removeRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 16
    .line 17
    add-int/lit8 v2, v1, -0x1

    .line 18
    .line 19
    if-ge v0, v2, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 22
    .line 23
    add-int/lit8 v2, v0, 0x1

    .line 24
    .line 25
    aget-object v3, v1, v2

    .line 26
    .line 27
    iget-object v4, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    .line 29
    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 30
    .line 31
    if-ne v5, v2, :cond_0

    .line 32
    .line 33
    iput v0, v4, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 34
    .line 35
    :cond_0
    aput-object v3, v1, v0

    .line 36
    move v0, v2

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 42
    .line 43
    :cond_2
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 44
    .line 45
    iget-boolean v1, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget v1, p1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    .line 53
    .line 54
    :cond_3
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 64
    return-void

    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 72
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 5
    .line 6
    iget-object v3, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    array-length v4, v3

    .line 8
    .line 9
    if-ge v1, v4, :cond_1

    .line 10
    .line 11
    aget-object v2, v3, v1

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    iget-object v1, v2, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    .line 25
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/core/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 29
    .line 30
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 46
    .line 47
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Landroidx/constraintlayout/core/LinearSystem$Row;->clear()V

    .line 53
    const/4 v1, 0x1

    .line 54
    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    .line 56
    move v1, v0

    .line 57
    .line 58
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 59
    .line 60
    if-ge v1, v2, :cond_4

    .line 61
    .line 62
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    .line 63
    .line 64
    aget-object v2, v2, v1

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    iput-boolean v0, v2, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    .line 69
    .line 70
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->releaseRows()V

    .line 75
    .line 76
    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    .line 77
    .line 78
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    .line 83
    .line 84
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    .line 88
    .line 89
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 90
    return-void

    .line 91
    .line 92
    :cond_5
    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 93
    .line 94
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 98
    .line 99
    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 100
    return-void
.end method
