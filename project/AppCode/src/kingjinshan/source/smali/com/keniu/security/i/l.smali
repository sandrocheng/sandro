.class final Lcom/keniu/security/i/l;
.super Lcom/keniu/security/i/u;
.source "FileOpenWatcher.java"


# static fields
.field private static final k:[Ljava/lang/String;


# instance fields
.field private g:Lcom/keniu/security/i/m;

.field private h:Landroid/app/ActivityManager;

.field private i:Ljava/util/ArrayList;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ijinshan.mguard"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ijinshan.killer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/keniu/security/i/l;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/keniu/security/i/u;-><init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/i/l;->j:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/i/l;->i:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/i/l;)Landroid/app/ActivityManager;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/keniu/security/i/l;->h:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 17
    sget-object v0, Lcom/keniu/security/i/l;->k:[Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    sget-object v1, Lcom/keniu/security/i/l;->k:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/keniu/security/i/l;->k:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/i/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/keniu/security/i/l;->j:Z

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 95
    sget-object v0, Lcom/keniu/security/i/l;->k:[Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v2

    .line 97
    :goto_0
    sget-object v1, Lcom/keniu/security/i/l;->k:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 99
    sget-object v1, Lcom/keniu/security/i/l;->k:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 106
    :goto_1
    return v0

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1
.end method

.method static synthetic c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/keniu/security/i/l;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/keniu/security/i/l;->h:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/keniu/security/i/l;->f:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/keniu/security/i/l;->h:Landroid/app/ActivityManager;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/keniu/security/i/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/m;-><init>(Lcom/keniu/security/i/l;)V

    iput-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    .line 80
    iget-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    invoke-virtual {v0}, Lcom/keniu/security/i/m;->start()V

    .line 82
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/keniu/security/i/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/i/l;->j:Z

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    invoke-virtual {v0}, Lcom/keniu/security/i/m;->a()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    iget v0, p0, Lcom/keniu/security/i/l;->d:I

    if-eq p1, v0, :cond_0

    .line 49
    packed-switch p1, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    iget v0, p0, Lcom/keniu/security/i/l;->d:I

    return v0

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/i/l;->h:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/i/l;->f:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/keniu/security/i/l;->h:Landroid/app/ActivityManager;

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    if-nez v0, :cond_2

    new-instance v0, Lcom/keniu/security/i/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/m;-><init>(Lcom/keniu/security/i/l;)V

    iput-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    iget-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    invoke-virtual {v0}, Lcom/keniu/security/i/m;->start()V

    .line 53
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/keniu/security/i/l;->d:I

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    invoke-virtual {v0}, Lcom/keniu/security/i/m;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/l;->g:Lcom/keniu/security/i/m;

    .line 58
    :cond_3
    iput v1, p0, Lcom/keniu/security/i/l;->d:I

    goto :goto_0

    .line 62
    :pswitch_2
    iput-boolean v1, p0, Lcom/keniu/security/i/l;->j:Z

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final finalize()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/i/l;->a(I)I

    .line 40
    iget-object v0, p0, Lcom/keniu/security/i/l;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/l;->i:Ljava/util/ArrayList;

    .line 42
    return-void
.end method
