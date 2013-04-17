.class public Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/optimize/ICpuHelper;


# instance fields
.field private a:I

.field private b:[Ljava/lang/String;

.field private c:[I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a:I

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lbwy;

    invoke-direct {v0}, Lbwy;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot(Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/PriorityQueue;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-object v0

    :cond_1
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v3, v4, v1

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v3, v6

    if-ne v3, v8, :cond_3

    aget-object v3, v6, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    array-length v3, v6

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    aget-object v3, v6, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_1
    if-gt v3, v6, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private a(I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingAvaliableFrequencies()[I

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget v4, v2, v1

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAvailableCpus()I
    .locals 4

    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a:I

    if-gtz v0, :cond_1

    const-string v0, "/sys/devices/system/cpu/present"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(Ljava/lang/String;)Ljava/util/PriorityQueue;

    move-result-object v2

    const-string v0, "/sys/devices/system/cpu/possible"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(Ljava/lang/String;)Ljava/util/PriorityQueue;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a:I

    :cond_1
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a:I

    return v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCpuInfoMaxFreq()I
    .locals 2

    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->d:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->c()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->d:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->d:I

    return v0

    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->d:I

    goto :goto_0
.end method

.method public getCpuInfoMinFreq()I
    .locals 2

    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->e:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->c()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->e:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->e:I

    return v0

    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->e:I

    goto :goto_0
.end method

.method public getKernelMax()I
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->f:I

    if-nez v0, :cond_1

    const-string v0, "/sys/devices/system/cpu/kernel_max"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->f:I

    :cond_1
    iget v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->f:I

    goto :goto_0
.end method

.method public getOnlineCpus()[Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->e()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "/sys/devices/system/cpu/online"

    invoke-static {v1}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move-object v2, v1

    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move-object v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public declared-synchronized getScalingAvaliableFrequencies()[I
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->e()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I

    :goto_0
    array-length v1, v0

    if-lt v2, v1, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I

    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-static {v0}, Lbtd;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I

    :goto_3
    array-length v1, v0

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I

    aget-object v3, v0, v2

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getCpuInfoMinFreq()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getCpuInfoMaxFreq()I

    move-result v7

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingCurFreq()I

    move-result v0

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    :goto_4
    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->c:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v6, :cond_7

    if-eq v0, v7, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingGovernor()Ljava/lang/String;

    move-result-object v9

    const-string v0, "userspace"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "userspace"

    invoke-direct {p0, v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "userspace"

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->setScalingGovernor(Ljava/lang/String;)V

    :cond_8
    const-string v0, "userspace"

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingGovernor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    move v4, v1

    move v5, v0

    move v0, v2

    :goto_5
    add-int/lit8 v3, v0, 0x1

    const/4 v10, 0x3

    if-lt v0, v10, :cond_a

    invoke-virtual {p0, v9}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->setScalingGovernor(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    :goto_6
    if-lt v2, v3, :cond_f

    move-object v0, v1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->setScalingFreq(IZ)V

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingCurFreq()I

    move-result v5

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    :goto_7
    if-nez v0, :cond_c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v4, :cond_e

    add-int v0, v7, v5

    div-int/lit8 v0, v0, 0x2

    move v4, v2

    move v5, v0

    move v0, v3

    goto :goto_5

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_b

    move v0, v1

    goto :goto_7

    :cond_e
    add-int v0, v6, v5

    div-int/lit8 v0, v0, 0x2

    move v4, v1

    move v5, v0

    move v0, v3

    goto :goto_5

    :cond_f
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6
.end method

.method public declared-synchronized getScalingAvaliableGovernors()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->e()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b:[Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScalingCurFreq()I
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getScalingGovernor()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->d()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScalingMaxFreq()I
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getScalingMinFreq()I
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v0}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setScalingFreq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->setScalingFreq(IZ)V

    return-void
.end method

.method public setScalingFreq(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the freq is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingMinFreq()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingMaxFreq()I

    move-result v0

    if-le p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the freq should not be smaller than the min freq and not be larger than the max freq!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setScalingGovernor(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingAvaliableGovernors()[Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the governor is unavailable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setScalingMaxFreq(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the max freq is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingMinFreq()I

    move-result v0

    if-ge p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the max freq can not be smaller than the min freq!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScalingMinFreq(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportCpuRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the min freq is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;->getScalingMaxFreq()I

    move-result v0

    if-le p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the min freq can not be larger than the max freq!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    goto :goto_0
.end method
