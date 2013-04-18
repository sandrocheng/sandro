.class final Lcom/keniu/security/process/u;
.super Ljava/lang/Thread;
.source "ProcessScreenMonitor.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/process/s;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/process/s;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/process/u;-><init>(Lcom/keniu/security/process/s;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/process/s;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v4, v0

    invoke-static {v4}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.ijinshan.mguard_preferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-static {v4, v3}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;

    .line 125
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v4, v0

    invoke-static {v4}, Lcom/keniu/security/process/s;->b(Lcom/keniu/security/process/s;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v6, v0

    invoke-static {v6}, Lcom/keniu/security/process/s;->b(Lcom/keniu/security/process/s;)Landroid/app/ActivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;Ljava/util/List;)Ljava/util/List;

    .line 129
    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 133
    new-instance v9, Lcom/jxphone/mosecurity/d/m;

    invoke-direct {v9}, Lcom/jxphone/mosecurity/d/m;-><init>()V

    .line 136
    new-instance v10, Lcom/keniu/security/d/e;

    invoke-direct {v10}, Lcom/keniu/security/d/e;-><init>()V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/keniu/security/process/s;->b(Lcom/keniu/security/process/s;Ljava/util/List;)Ljava/util/List;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->c(Lcom/keniu/security/process/s;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 142
    const/4 v3, 0x1

    new-array v11, v3, [I

    .line 147
    const-wide/16 v3, 0x0

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v12, v0

    invoke-static {v12}, Lcom/keniu/security/process/s;->d(Lcom/keniu/security/process/s;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v13, v3

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v4, v0

    .line 150
    iget v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v15, 0x190

    if-ne v3, v15, :cond_2

    .line 151
    iget-object v15, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object v0, v15

    array-length v0, v0

    move/from16 v16, v0

    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    aget-object v18, v15, v17

    .line 156
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 159
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5, v10}, Lcom/jxphone/mosecurity/b/c;->c(Lcom/keniu/security/d/e;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    const/4 v3, 0x1

    :try_start_0
    move-object v0, v8

    move-object/from16 v1, v18

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 170
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    .line 171
    const/4 v3, 0x0

    move-object v0, v4

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v20, v0

    aput v20, v11, v3

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->c(Lcom/keniu/security/process/s;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 175
    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->c(Lcom/keniu/security/process/s;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->b(Lcom/keniu/security/process/s;)Landroid/app/ActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v20, "getProcessMemoryInfo"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, [I

    aput-object v23, v21, v22

    move-object v0, v3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/keniu/security/process/s;->b(Lcom/keniu/security/process/s;)Landroid/app/ActivityManager;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v11, v21, v22

    move-object v0, v3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Debug$MemoryInfo;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object/from16 v20, v0

    const/16 v20, 0x0

    aget-object v3, v3, v20

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "getTotalPss"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v13, v13, v20

    .line 188
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v3, v0

    and-int/lit8 v3, v3, 0x1

    const/16 v19, 0x1

    move v0, v3

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 190
    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->b(Ljava/lang/String;)V

    .line 154
    :cond_4
    :goto_2
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto/16 :goto_1

    .line 194
    :cond_5
    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    .line 206
    :cond_6
    if-eqz v5, :cond_7

    .line 208
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/b/c;->b()V

    .line 210
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v3, v0

    invoke-static {v3}, Lcom/keniu/security/process/s;->c(Lcom/keniu/security/process/s;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 211
    if-eqz v3, :cond_0

    .line 216
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v5, v0

    invoke-static {v5}, Lcom/keniu/security/process/s;->b(Lcom/keniu/security/process/s;)Landroid/app/ActivityManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 218
    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 220
    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_9

    .line 224
    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    .line 231
    :goto_3
    float-to-double v5, v4

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_8

    .line 233
    const/high16 v4, 0x3f00

    .line 237
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/process/u;->a:Lcom/keniu/security/process/s;

    move-object v5, v0

    invoke-static {v5, v3, v4}, Lcom/keniu/security/process/s;->a(Lcom/keniu/security/process/s;IF)V

    goto/16 :goto_0

    .line 228
    :cond_9
    long-to-float v4, v13

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    goto :goto_3
.end method
