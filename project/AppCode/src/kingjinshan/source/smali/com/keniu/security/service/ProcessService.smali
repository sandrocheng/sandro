.class public Lcom/keniu/security/service/ProcessService;
.super Landroid/app/Service;
.source "ProcessService.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/app/ActivityManager;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 298
    return-void
.end method

.method private static a(Landroid/os/Debug$MemoryInfo;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTotalPss"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 277
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private a()J
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/keniu/security/service/ProcessService;->a:Landroid/content/SharedPreferences;

    const-string v1, "cleartime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(IF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/keniu/security/service/ProcessService;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    const-string v1, "cleartime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "clearmemory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%1$.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "killCount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method private a(IJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v1, 0x4480

    .line 283
    long-to-float v0, p2

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    .line 284
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/keniu/security/service/ProcessService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0300db

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 287
    const v2, 0x7f080322

    const v3, 0x7f0b054e

    invoke-virtual {p0, v3}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 289
    const v2, 0x7f080323

    const v3, 0x7f0b054f

    invoke-virtual {p0, v3}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 292
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/keniu/security/process/ProcessWidget;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 294
    invoke-virtual {v2, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 296
    return-void
.end method

.method private b()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 104
    iget-object v0, p0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/service/ProcessService;->c:Ljava/util/List;

    .line 107
    iget-object v0, p0, Lcom/keniu/security/service/ProcessService;->c:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v7

    .line 124
    :goto_0
    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/service/ProcessService;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v7

    .line 113
    :goto_1
    if-ge v2, v1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/keniu/security/service/ProcessService;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v0

    move v4, v7

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 117
    iget-object v6, p0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    iget-object v6, p0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 113
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 25

    .prologue
    .line 130
    const-string v3, "com.ijinshan.mguard_preferences"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/service/ProcessService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/service/ProcessService;->a:Landroid/content/SharedPreferences;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->a:Landroid/content/SharedPreferences;

    move-object v5, v0

    const-string v6, "cleartime"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 134
    const v3, 0x7f0b0552

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 271
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/b/c;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    new-instance v3, Lcom/keniu/security/service/b;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/service/b;-><init>(Lcom/keniu/security/service/ProcessService;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/keniu/security/service/b;->d()V

    goto :goto_0

    .line 151
    :cond_1
    const-string v3, "activity"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    .line 154
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/service/ProcessService;->c:Ljava/util/List;

    .line 159
    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 163
    new-instance v9, Lcom/jxphone/mosecurity/d/m;

    invoke-direct {v9}, Lcom/jxphone/mosecurity/d/m;-><init>()V

    .line 166
    new-instance v10, Lcom/keniu/security/d/e;

    invoke-direct {v10}, Lcom/keniu/security/d/e;-><init>()V

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->b()I

    move-result v11

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 173
    const/4 v3, 0x1

    new-array v12, v3, [I

    .line 176
    const-wide/16 v3, 0x0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->c:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-wide v14, v3

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v4, v0

    .line 181
    move-object v0, v4

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move/from16 v18, v3

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v19, v16, v18

    .line 183
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 186
    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    .line 192
    :try_start_0
    invoke-virtual {v5, v10}, Lcom/jxphone/mosecurity/b/c;->c(Lcom/keniu/security/d/e;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    const/4 v3, 0x1

    move-object v0, v8

    move-object/from16 v1, v19

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 196
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    .line 197
    const/4 v3, 0x0

    move-object v0, v4

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v21, v0

    aput v21, v12, v3

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 201
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v21, "getProcessMemoryInfo"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, [I

    aput-object v24, v22, v23

    move-object v0, v3

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    move-object v0, v3

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Debug$MemoryInfo;

    .line 208
    const/16 v21, 0x0

    aget-object v3, v3, v21

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-string v22, "getTotalPss"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v14, v14, v21

    .line 213
    :cond_3
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v3, v0

    and-int/lit8 v3, v3, 0x1

    const/16 v20, 0x1

    move v0, v3

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 215
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->b(Ljava/lang/String;)V

    .line 181
    :cond_4
    :goto_2
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    goto/16 :goto_1

    .line 219
    :cond_5
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    .line 230
    :cond_6
    if-eqz v5, :cond_7

    .line 232
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/b/c;->b()V

    .line 234
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 235
    if-nez v3, :cond_8

    .line 237
    const v3, 0x7f0b0551

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 242
    :cond_8
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 244
    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 246
    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_a

    .line 250
    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    .line 257
    :goto_3
    float-to-double v8, v4

    const-wide/high16 v12, 0x3fe0

    cmpg-double v5, v8, v12

    if-gtz v5, :cond_9

    .line 260
    const/high16 v4, 0x3f00

    .line 264
    :cond_9
    const v5, 0x7f0b0550

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 266
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->a:Landroid/content/SharedPreferences;

    move-object v5, v0

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v8, "cleartime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v5, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v8, "clearmemory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%1$.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v12, v13

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "MB"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "killCount"

    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    sub-int v3, v11, v3

    const-wide/16 v4, 0x400

    mul-long/2addr v4, v14

    add-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0300db

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v6, 0x7f080322

    const v7, 0x7f0b054e

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f080323

    const v6, 0x7f0b054f

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/keniu/security/process/ProcessWidget;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 254
    :cond_a
    long-to-float v4, v14

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    goto/16 :goto_3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 24
    .parameter
    .parameter

    .prologue
    .line 68
    if-eqz p1, :cond_1

    .line 70
    const-string v3, "process_service_type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "process_service_type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clear"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const-string v3, "com.ijinshan.mguard_preferences"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/service/ProcessService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/service/ProcessService;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->a:Landroid/content/SharedPreferences;

    move-object v5, v0

    const-string v6, "cleartime"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const v3, 0x7f0b0552

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 78
    :cond_0
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;)V

    .line 82
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->stopSelf()V

    .line 83
    return-void

    .line 74
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/b/c;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Lcom/keniu/security/service/b;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/service/b;-><init>(Lcom/keniu/security/service/ProcessService;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/keniu/security/service/b;->d()V

    goto :goto_0

    :cond_3
    const-string v4, "activity"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/service/ProcessService;->c:Ljava/util/List;

    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Lcom/jxphone/mosecurity/d/m;

    invoke-direct {v7}, Lcom/jxphone/mosecurity/d/m;-><init>()V

    new-instance v8, Lcom/keniu/security/d/e;

    invoke-direct {v8}, Lcom/keniu/security/d/e;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->b()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->clear()V

    const/4 v10, 0x1

    new-array v10, v10, [I

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->c:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v0, p1

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object v14, v0

    array-length v15, v14

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_4

    aget-object v17, v14, v16

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3, v8}, Lcom/jxphone/mosecurity/b/c;->c(Lcom/keniu/security/d/e;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    move-object v0, v6

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v20, v0

    aput v20, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "getProcessMemoryInfo"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, [I

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Debug$MemoryInfo;

    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v11, v11, v19

    :cond_5
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->b(Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    :cond_7
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v17

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/b/c;->b()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->d:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    const v3, 0x7f0b0551

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->b:Landroid/app/ActivityManager;

    move-object v7, v0

    invoke-virtual {v7, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v6, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x5

    if-ge v8, v10, :cond_c

    sub-long/2addr v6, v4

    long-to-float v6, v6

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    :goto_3
    float-to-double v7, v6

    const-wide/high16 v13, 0x3fe0

    cmpg-double v7, v7, v13

    if-gtz v7, :cond_b

    const/high16 v6, 0x3f00

    :cond_b
    const v7, 0x7f0b0550

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/ProcessService;->a:Landroid/content/SharedPreferences;

    move-object v7, v0

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "cleartime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-interface {v7, v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v8, "clearmemory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%1$.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "MB"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v6, "killCount"

    invoke-interface {v7, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sub-int v3, v9, v3

    const-wide/16 v6, 0x400

    mul-long/2addr v6, v11

    add-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/service/ProcessService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0300db

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v6, 0x7f080322

    const v7, 0x7f0b054e

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f080323

    const v6, 0x7f0b054f

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/ProcessService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/keniu/security/process/ProcessWidget;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_c
    long-to-float v6, v11

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    goto/16 :goto_3
.end method
