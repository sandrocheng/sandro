.class public final Lbzh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;)V
    .locals 0

    iput-object p1, p0, Lbzh;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "/proc/stat"

    invoke-static {v2}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v0

    :goto_0
    if-lt v4, v6, :cond_1

    move-object v2, v3

    :cond_0
    if-nez v2, :cond_3

    iget-object v0, p0, Lbzh;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-interface {v0, v9}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    aget-object v2, v5, v4

    if-eqz v2, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_3
    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, "/proc/stat"

    invoke-static {v2}, Lbtd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v0

    :goto_2
    if-lt v4, v7, :cond_5

    move-object v2, v3

    :cond_4
    if-nez v2, :cond_7

    iget-object v0, p0, Lbzh;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-interface {v0, v9}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto :goto_1

    :cond_5
    :try_start_2
    aget-object v2, v6, v4

    if-eqz v2, :cond_6

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_7
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v2, v0

    move v3, v1

    :goto_3
    array-length v6, v5

    if-lt v3, v6, :cond_8

    :goto_4
    array-length v3, v4

    if-lt v1, v3, :cond_9

    sub-int/2addr v0, v2

    const/4 v1, 0x4

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v1, v2, v1

    sub-int v1, v0, v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iget-object v1, p0, Lbzh;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto :goto_1

    :cond_8
    :try_start_3
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    aget-object v3, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lbzh;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-interface {v0, v9}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lbzh;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-interface {v0, v9}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbzh;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-interface {v1, v9}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    throw v0
.end method
