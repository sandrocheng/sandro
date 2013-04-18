.class public final Lcom/keniu/security/protection/e;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static a:Landroid/hardware/Camera;

.field private static b:I

.field private static final c:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    const/16 v0, 0xd

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/keniu/security/protection/e;->c:[D

    return-void

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf4t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf8t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xfct 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x2t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x4t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x6t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x8t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xat 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xct 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xet 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x10t 0x40t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/hardware/Camera$Parameters;Z)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 356
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 358
    const-wide/16 v0, 0x0

    .line 384
    :goto_0
    return-wide v0

    .line 361
    :cond_0
    const/4 v0, 0x0

    .line 362
    if-eqz p1, :cond_1

    .line 364
    const-string v0, "taking-picture-zoom-min"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_1
    if-nez v0, :cond_2

    .line 369
    const-string v0, "min-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    if-nez v0, :cond_2

    .line 372
    const-string v0, "mot-min-picture-continuous-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    if-nez v0, :cond_2

    .line 375
    const-string v0, "digi-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    if-nez v0, :cond_2

    .line 378
    const-wide/high16 v0, 0x3ff0

    goto :goto_0

    .line 384
    :cond_2
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 242
    :goto_0
    return v0

    .line 232
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 242
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 236
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 238
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    return-object v0
.end method

.method private static a(I)Landroid/hardware/Camera;
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 88
    const-string v2, "channel-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "channel"

    invoke-virtual {v1, v2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 96
    :cond_0
    return-object v0
.end method

.method private static b(Landroid/hardware/Camera$Parameters;Z)D
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 389
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    move-wide v0, v1

    .line 417
    :goto_0
    return-wide v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    .line 395
    if-eqz p1, :cond_1

    .line 397
    const-string v0, "taking-picture-zoom-max"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_1
    if-nez v0, :cond_2

    .line 402
    const-string v0, "max-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    if-nez v0, :cond_2

    .line 405
    const-string v0, "mot-max-picture-continuous-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    if-nez v0, :cond_2

    .line 408
    const-string v0, "digi-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    if-nez v0, :cond_2

    move-wide v0, v1

    .line 411
    goto :goto_0

    .line 417
    :cond_2
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public static declared-synchronized b()Landroid/hardware/Camera;
    .locals 2

    .prologue
    .line 109
    const-class v0, Lcom/keniu/security/protection/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    monitor-exit v0

    return-object v1

    .line 114
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/keniu/security/protection/e;->f()Landroid/hardware/Camera;

    move-result-object v1

    .line 115
    sput-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 117
    const/4 v1, 0x0

    sput v1, Lcom/keniu/security/protection/e;->b:I

    .line 118
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    sput-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    .line 125
    :goto_1
    sget-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    goto :goto_0

    .line 122
    :cond_1
    const/4 v1, 0x1

    sput v1, Lcom/keniu/security/protection/e;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(I)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 146
    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 147
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 149
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.hardware.Camera$CameraInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    const-class v0, Landroid/hardware/Camera;

    const-string v1, "getCameraInfo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 153
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 154
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v0, v1

    .line 173
    :goto_1
    return-object v0

    .line 147
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_1
    :goto_2
    move-object v0, v6

    .line 173
    goto :goto_1

    .line 161
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 163
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 165
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 167
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 169
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2
.end method

.method private static c(I)I
    .locals 1
    .parameter

    .prologue
    .line 246
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static declared-synchronized c()V
    .locals 2

    .prologue
    .line 129
    const-class v0, Lcom/keniu/security/protection/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 132
    :try_start_1
    sget-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    .line 134
    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(Landroid/hardware/Camera$Parameters;Z)[D
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xc

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 422
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    move-wide v0, v6

    .line 423
    :goto_0
    sget-object v2, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-nez v2, :cond_3

    move-wide v2, v6

    .line 425
    :goto_1
    cmpl-double v4, v2, v0

    if-lez v4, :cond_6

    .line 427
    const-wide/high16 v4, 0x4028

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 428
    cmpl-double v6, v4, v6

    if-nez v6, :cond_0

    .line 430
    const-wide/high16 v4, 0x3fe0

    .line 433
    :cond_0
    const/16 v6, 0xd

    new-array v6, v6, [D

    .line 434
    const/4 v7, 0x0

    aput-wide v0, v6, v7

    .line 435
    aput-wide v2, v6, v8

    .line 437
    add-double/2addr v0, v4

    .line 438
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v8, :cond_5

    .line 440
    aput-wide v0, v6, v2

    .line 441
    add-double/2addr v0, v4

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 422
    :cond_1
    if-eqz p1, :cond_8

    const-string v0, "taking-picture-zoom-min"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_2

    const-string v0, "min-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "mot-min-picture-continuous-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "digi-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x3ff0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 423
    :cond_3
    if-eqz p1, :cond_7

    const-string v2, "taking-picture-zoom-max"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_4

    const-string v2, "max-zoom"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "mot-max-picture-continuous-zoom"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "digi-zoom"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-wide v2, v6

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_1

    :cond_5
    move-object v0, v6

    .line 447
    :goto_5
    return-object v0

    :cond_6
    move-object v0, v5

    goto :goto_5

    :cond_7
    move-object v2, v5

    goto :goto_4

    :cond_8
    move-object v0, v5

    goto :goto_3
.end method

.method public static d()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 182
    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    const-string v1, "getNumberOfCameras"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 185
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 188
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 192
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_1
    move v0, v3

    .line 223
    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 199
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 201
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 203
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 207
    :cond_1
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "HTC Incredible S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 209
    goto :goto_2
.end method

.method private static d(I)V
    .locals 5
    .parameter

    .prologue
    .line 459
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 464
    :cond_0
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 477
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/protection/e;->c(Landroid/hardware/Camera$Parameters;Z)[D

    move-result-object v1

    .line 478
    if-eqz v1, :cond_2

    .line 480
    const-string v2, "zoom"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 481
    const-string v2, "zoom"

    aget-wide v3, v1, p0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_1
    const-string v2, "digi-zoom"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 485
    const-string v2, "digi-zoom"

    aget-wide v3, v1, p0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_2
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keniu/security/protection/e;->c(Landroid/hardware/Camera$Parameters;Z)[D

    move-result-object v1

    .line 490
    if-eqz v1, :cond_3

    .line 492
    const-string v2, "taking-picture-zoom"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 493
    const-string v2, "taking-picture-zoom"

    aget-wide v3, v1, p0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_3
    :try_start_0
    sget-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    :try_start_0
    sget v0, Lcom/keniu/security/protection/e;->b:I

    invoke-static {v0}, Lcom/keniu/security/protection/e;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_4

    .line 264
    const-string v1, "facing"

    invoke-static {v0, v1}, Lcom/keniu/security/protection/e;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 265
    const-string v2, "orientation"

    invoke-static {v0, v2}, Lcom/keniu/security/protection/e;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 267
    if-ne v1, v4, :cond_3

    .line 268
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "GT-I9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    if-nez v1, :cond_5

    .line 269
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/keniu/security/protection/e;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 285
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 287
    sget-object v1, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 291
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    .line 292
    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 293
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setRotation"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 294
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    :goto_3
    :try_start_2
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 268
    goto :goto_1

    .line 276
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1}, Lcom/keniu/security/protection/e;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 281
    :cond_4
    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/keniu/security/protection/e;->c(I)I

    move-result v0

    goto :goto_2

    .line 295
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private static f()Landroid/hardware/Camera;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 30
    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    const-string v1, "open"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 31
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .line 36
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/keniu/security/protection/e;->g()Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method private static g()Landroid/hardware/Camera;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    :try_start_0
    const-string v0, "android.hardware.HtcFrontFacingCamera"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    const-string v1, "getCamera"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_0
.end method

.method private static h()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/keniu/security/protection/e;->b:I

    return v0
.end method

.method private static i()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 310
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    move v0, v4

    .line 351
    :goto_0
    return v0

    .line 315
    :cond_0
    sget-object v0, Lcom/keniu/security/protection/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 317
    const-string v0, "mot-max-picture-continuous-zoom"

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_1

    move v0, v5

    .line 320
    goto :goto_0

    .line 323
    :cond_1
    const-string v0, "digi-zoom"

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_3

    .line 326
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "SPH-M900"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_1
    if-nez v0, :cond_3

    move v0, v5

    .line 328
    goto :goto_0

    :cond_2
    move v0, v4

    .line 326
    goto :goto_1

    .line 335
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isZoomSupported"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 336
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_4

    .line 338
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 342
    :goto_2
    if-eqz v0, :cond_5

    .line 344
    const-string v0, "zoom"

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_5

    move v0, v5

    .line 347
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v4

    .line 351
    goto :goto_0
.end method
