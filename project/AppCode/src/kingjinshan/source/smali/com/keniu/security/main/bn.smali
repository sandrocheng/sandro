.class public final Lcom/keniu/security/main/bn;
.super Ljava/lang/Object;
.source "MainManager.java"


# static fields
.field public static a:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final b:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final c:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final d:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final e:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final f:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final g:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final h:I = 0x0

.field public static final i:Ljava/lang/String; = "com.keniu.security.main.main_manager"

.field private static o:I

.field private static p:Lcom/keniu/security/main/bn;


# instance fields
.field private j:Lcom/keniu/security/main/bq;

.field private k:Landroid/content/Context;

.field private l:I

.field private m:Ljava/util/List;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 16
    const/4 v0, 0x0

    .line 18
    sput v0, Lcom/keniu/security/main/bn;->a:I

    sput v2, Lcom/keniu/security/main/bn;->a:I

    sput v0, Lcom/keniu/security/main/bn;->b:I

    .line 19
    sget v0, Lcom/keniu/security/main/bn;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/main/bn;->a:I

    sput v0, Lcom/keniu/security/main/bn;->c:I

    .line 20
    sget v0, Lcom/keniu/security/main/bn;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/main/bn;->a:I

    sput v0, Lcom/keniu/security/main/bn;->d:I

    .line 21
    sget v0, Lcom/keniu/security/main/bn;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/main/bn;->a:I

    sput v0, Lcom/keniu/security/main/bn;->e:I

    .line 22
    sget v0, Lcom/keniu/security/main/bn;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/main/bn;->a:I

    sput v0, Lcom/keniu/security/main/bn;->f:I

    .line 23
    sget v0, Lcom/keniu/security/main/bn;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/main/bn;->a:I

    sput v0, Lcom/keniu/security/main/bn;->g:I

    .line 24
    sget v0, Lcom/keniu/security/main/bn;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/main/bn;->a:I

    sput v0, Lcom/keniu/security/main/bn;->h:I

    .line 240
    sput v2, Lcom/keniu/security/main/bn;->o:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/main/bn;->n:I

    .line 199
    iput-object p1, p0, Lcom/keniu/security/main/bn;->k:Landroid/content/Context;

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/bn;)I
    .locals 1
    .parameter

    .prologue
    .line 12
    iget v0, p0, Lcom/keniu/security/main/bn;->n:I

    return v0
.end method

.method public static declared-synchronized a()Lcom/keniu/security/main/bn;
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/keniu/security/main/bn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/main/bn;->p:Lcom/keniu/security/main/bn;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/keniu/security/main/bn;

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/keniu/security/main/bn;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/keniu/security/main/bn;->p:Lcom/keniu/security/main/bn;

    .line 48
    :cond_0
    sget-object v1, Lcom/keniu/security/main/bn;->p:Lcom/keniu/security/main/bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/keniu/security/main/bn;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/keniu/security/main/bs;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 66
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    sget v0, Lcom/keniu/security/main/bn;->a:I

    sub-int/2addr v0, v4

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bs;

    .line 71
    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->d()I

    move-result v2

    sget v3, Lcom/keniu/security/main/bn;->h:I

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->a()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 76
    if-ne v0, p1, :cond_0

    move v0, v4

    .line 88
    :goto_1
    return v0

    :cond_0
    move v0, v5

    .line 82
    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/main/bs;->a()I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/main/bn;)Lcom/keniu/security/main/bq;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/keniu/security/main/bn;->j:Lcom/keniu/security/main/bq;

    return-object v0
.end method

.method private static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v1, p0, 0x64

    add-int/lit8 v1, v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/keniu/security/main/bs;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v5

    move v2, v5

    :goto_0
    sget v0, Lcom/keniu/security/main/bn;->a:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bs;

    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->d()I

    move-result v3

    sget v4, Lcom/keniu/security/main/bn;->h:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->a()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_2
    if-ne v0, v6, :cond_1

    invoke-virtual {p0}, Lcom/keniu/security/main/bn;->e()Lcom/keniu/security/main/bs;

    move-result-object v0

    if-ne p1, v0, :cond_1

    move v0, v6

    :goto_3
    return v0

    :cond_1
    move v0, v5

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_2
.end method

.method static synthetic f()Ljava/util/List;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/keniu/security/main/bn;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/keniu/security/main/by;

    invoke-direct {v1}, Lcom/keniu/security/main/by;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/keniu/security/main/bu;

    invoke-direct {v1}, Lcom/keniu/security/main/bu;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/keniu/security/main/bw;

    invoke-direct {v1}, Lcom/keniu/security/main/bw;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/keniu/security/main/cb;

    invoke-direct {v1}, Lcom/keniu/security/main/cb;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/keniu/security/main/ca;

    invoke-direct {v1}, Lcom/keniu/security/main/ca;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/keniu/security/main/bx;

    invoke-direct {v1}, Lcom/keniu/security/main/bx;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/keniu/security/main/bz;

    invoke-direct {v1}, Lcom/keniu/security/main/bz;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static g()Ljava/util/List;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/keniu/security/main/bn;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    new-instance v1, Lcom/keniu/security/main/by;

    invoke-direct {v1}, Lcom/keniu/security/main/by;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/keniu/security/main/bu;

    invoke-direct {v1}, Lcom/keniu/security/main/bu;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/keniu/security/main/bw;

    invoke-direct {v1}, Lcom/keniu/security/main/bw;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/keniu/security/main/cb;

    invoke-direct {v1}, Lcom/keniu/security/main/cb;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/keniu/security/main/ca;

    invoke-direct {v1}, Lcom/keniu/security/main/ca;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/keniu/security/main/bx;

    invoke-direct {v1}, Lcom/keniu/security/main/bx;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/keniu/security/main/bz;

    invoke-direct {v1}, Lcom/keniu/security/main/bz;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method

.method private h()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v2, v1

    .line 54
    :goto_0
    sget v0, Lcom/keniu/security/main/bn;->a:I

    if-ge v1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bs;

    .line 56
    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->d()I

    move-result v3

    sget v4, Lcom/keniu/security/main/bn;->h:I

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->a()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 58
    add-int/lit8 v0, v2, 0x1

    .line 54
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 62
    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private i()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v4

    .line 98
    :goto_0
    sget v0, Lcom/keniu/security/main/bn;->a:I

    if-ge v1, v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bs;

    .line 100
    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->d()I

    move-result v2

    sget v3, Lcom/keniu/security/main/bn;->h:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 106
    :goto_1
    return v0

    .line 98
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v4

    .line 106
    goto :goto_1
.end method

.method private j()V
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/keniu/security/main/bn;->l:I

    sget v1, Lcom/keniu/security/main/bn;->h:I

    if-ge v0, v1, :cond_0

    .line 150
    iget v0, p0, Lcom/keniu/security/main/bn;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/main/bn;->l:I

    :goto_0
    iget v0, p0, Lcom/keniu/security/main/bn;->l:I

    sget v1, Lcom/keniu/security/main/bn;->a:I

    if-ge v0, v1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    iget v1, p0, Lcom/keniu/security/main/bn;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bs;

    .line 152
    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 158
    :cond_0
    :goto_1
    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/keniu/security/main/bn;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/main/bn;->l:I

    goto :goto_0

    .line 156
    :cond_2
    sget v0, Lcom/keniu/security/main/bn;->h:I

    iput v0, p0, Lcom/keniu/security/main/bn;->l:I

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/keniu/security/main/bq;)I
    .locals 4
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/keniu/security/main/bn;->j:Lcom/keniu/security/main/bq;

    .line 124
    sget v0, Lcom/keniu/security/main/bn;->o:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/main/bn;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/keniu/security/main/br;

    invoke-direct {v1, p0}, Lcom/keniu/security/main/br;-><init>(Lcom/keniu/security/main/bn;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/keniu/security/main/br;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/keniu/security/main/bn;->k:Landroid/content/Context;

    const-string v1, "com.keniu.security.main.main_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    invoke-static {p1, p2}, Lcom/keniu/security/main/bn;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lcom/keniu/security/main/bn;->n:I

    .line 135
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/keniu/security/main/bn;->k:Landroid/content/Context;

    const-string v1, "com.keniu.security.main.main_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    invoke-static {p1, p2}, Lcom/keniu/security/main/bn;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method

.method public final b(I)Lcom/keniu/security/main/bs;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    sget v0, Lcom/keniu/security/main/bn;->a:I

    if-lt p1, v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/main/bs;

    move-object v0, p0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/main/bn;->l:I

    .line 119
    return-void
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/keniu/security/main/bn;->k:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/bn;->j:Lcom/keniu/security/main/bq;

    sget v1, Lcom/keniu/security/main/bn;->o:I

    invoke-interface {v0}, Lcom/keniu/security/main/bq;->a()V

    .line 131
    return-void
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/keniu/security/main/bn;->k:Landroid/content/Context;

    return-object v0
.end method

.method public final e()Lcom/keniu/security/main/bs;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget v0, p0, Lcom/keniu/security/main/bn;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/main/bn;->l:I

    :cond_1
    iget v0, p0, Lcom/keniu/security/main/bn;->l:I

    sget v1, Lcom/keniu/security/main/bn;->a:I

    if-ge v0, v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    iget v1, p0, Lcom/keniu/security/main/bn;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/bs;

    .line 167
    invoke-virtual {v0}, Lcom/keniu/security/main/bs;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 172
    :cond_2
    sget v0, Lcom/keniu/security/main/bn;->h:I

    iput v0, p0, Lcom/keniu/security/main/bn;->l:I

    .line 173
    iget-object v0, p0, Lcom/keniu/security/main/bn;->m:Ljava/util/List;

    iget v1, p0, Lcom/keniu/security/main/bn;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/main/bs;

    move-object v0, p0

    goto :goto_0
.end method
