.class public final Lcom/keniu/security/main/a/n;
.super Ljava/lang/Object;
.source "MemoryOptimizeCheckModule.java"

# interfaces
.implements Lcom/keniu/security/main/a/m;


# static fields
.field public static a:Z


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field private i:J

.field private j:Landroid/app/ActivityManager;

.field private k:I

.field private l:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/main/a/n;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "\u8fdb\u7a0b\u6e05\u7406\uff0c\u91ca\u653e\u5185\u5b58"

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->b:Ljava/lang/String;

    .line 37
    const-string v0, "\u7acb\u5373\u6e05\u7406"

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->c:Ljava/lang/String;

    .line 38
    const-string v0, "\u5df2\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->d:Ljava/lang/String;

    .line 39
    const-string v0, "\u5df2\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->e:Ljava/lang/String;

    .line 40
    const-string v0, "\u8fdb\u7a0b\u6e05\u7406\uff0c\u91ca\u653e\u5185\u5b58"

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->f:Ljava/lang/String;

    .line 42
    sget v0, Lcom/keniu/security/main/a/k;->c:I

    iput v0, p0, Lcom/keniu/security/main/a/n;->g:I

    .line 49
    invoke-static {}, Lcom/keniu/security/main/a/n;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/main/a/n;->i:J

    .line 50
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x400

    const/4 v7, 0x1

    .line 113
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->j:Landroid/app/ActivityManager;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->j:Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 118
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->j:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 125
    :cond_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 127
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 129
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 131
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eq v7, v5, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v5, "com.ijinshan.mguard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/main/a/n;->k:I

    .line 145
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v3, 0x64

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x32

    iget-wide v5, p0, Lcom/keniu/security/main/a/n;->i:J

    mul-long/2addr v3, v5

    mul-long/2addr v3, v8

    cmp-long v0, v0, v3

    if-gtz v0, :cond_4

    .line 147
    iget-wide v0, p0, Lcom/keniu/security/main/a/n;->i:J

    mul-long/2addr v0, v8

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/keniu/security/main/a/n;->i:J

    mul-long/2addr v1, v8

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 150
    const v1, 0x3f7d70a4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3c23d70a

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 152
    const-string v1, "%d%%"

    new-array v2, v7, [Ljava/lang/Object;

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd0\u884c\u8fdb\u7a0b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keniu/security/main/a/n;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a,\u5185\u5b58\u5360\u7528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->b:Ljava/lang/String;

    move v0, v10

    .line 158
    :goto_1
    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 157
    :cond_4
    const-string v0, "\u8fdb\u7a0b\u6e05\u7406\uff0c\u91ca\u653e\u5185\u5b58"

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->b:Ljava/lang/String;

    move v0, v7

    .line 158
    goto :goto_1
.end method

.method private d(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 233
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 234
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 235
    const/4 v0, 0x0

    .line 237
    iget-object v4, p0, Lcom/keniu/security/main/a/n;->j:Landroid/app/ActivityManager;

    invoke-virtual {v4, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 239
    iget-object v4, p0, Lcom/keniu/security/main/a/n;->j:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 241
    invoke-static {p1}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    .line 244
    new-instance v6, Lcom/jxphone/mosecurity/d/m;

    invoke-direct {v6}, Lcom/jxphone/mosecurity/d/m;-><init>()V

    .line 245
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 246
    new-instance v8, Lcom/keniu/security/d/e;

    invoke-direct {v8}, Lcom/keniu/security/d/e;-><init>()V

    .line 247
    iget-object v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v5, v8}, Lcom/jxphone/mosecurity/b/c;->c(Lcom/keniu/security/d/e;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 249
    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v9, "com.ijinshan.mguard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v9, "com.ijinshan.mPrivacy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v9, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v9, "com.ijinshan.duba"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 258
    :try_start_0
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v1, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 263
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 264
    if-eqz v0, :cond_6

    .line 266
    const/4 v8, 0x1

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eq v8, v9, :cond_6

    .line 268
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 270
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/jxphone/mosecurity/d/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    add-int/lit8 v0, v7, 0x1

    :goto_1
    move v7, v0

    .line 278
    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->j:Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 283
    const/4 v0, 0x0

    .line 284
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v8, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    .line 285
    iget-wide v0, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    .line 288
    :cond_2
    if-lez v7, :cond_4

    .line 289
    const v1, 0x3dcccccd

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 290
    const v1, 0x7f0b082c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 305
    :goto_2
    const v1, 0x3dcccccd

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 306
    const v1, 0x7f0b082c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->b:Ljava/lang/String;

    .line 313
    :goto_3
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/n;->h:I

    .line 315
    return-void

    .line 296
    :cond_3
    const v1, 0x7f0b082d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 302
    :cond_4
    const v1, 0x7f0b082e

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 310
    :cond_5
    const v0, 0x7f0b082d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/n;->b:Ljava/lang/String;

    goto :goto_3

    .line 279
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    move v0, v7

    goto/16 :goto_1
.end method

.method private static j()J
    .locals 5

    .prologue
    .line 207
    const-string v0, "/proc/meminfo"

    .line 210
    const-wide/16 v1, 0x0

    .line 213
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 216
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 218
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 221
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 223
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v1

    .line 228
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/keniu/security/main/a/n;->g:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 98
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->b:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v0

    .line 100
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->c:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->d:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->e:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->f:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ap.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/f/ab;->a(Ljava/io/File;Landroid/content/Context;)Z

    .line 185
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 187
    sput-boolean v2, Lcom/keniu/security/main/MainActivity;->c:Z

    .line 188
    sput-boolean v2, Lcom/keniu/security/main/a/n;->a:Z

    .line 199
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lcom/keniu/security/main/a/n;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lcom/keniu/security/main/a/n;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p2, p0, Lcom/keniu/security/main/a/n;->l:Landroid/content/Context;

    .line 165
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 166
    invoke-direct {p0, p2}, Lcom/keniu/security/main/a/n;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/n;->h:I

    .line 171
    :goto_0
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 172
    return-void

    .line 169
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/n;->h:I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 324
    sget-boolean v0, Lcom/keniu/security/main/a/n;->a:Z

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/main/a/n;->a:Z

    .line 326
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->l:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/keniu/security/main/a/n;->d(Landroid/content/Context;)V

    .line 329
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/keniu/security/main/a/n;->h:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/main/a/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x50

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/main/a/n;->k:I

    .line 75
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/keniu/security/main/a/n;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/n;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method
