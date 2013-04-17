.class public final Lrj;
.super Ljava/lang/Object;


# static fields
.field private static a:Lrj;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lho;

.field private d:Ljp;

.field private e:Lhq;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lrj;->a:Lrj;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrj;->b:Landroid/content/Context;

    iput-object v0, p0, Lrj;->c:Lho;

    iput-object v0, p0, Lrj;->d:Ljp;

    iput-object v0, p0, Lrj;->e:Lhq;

    iput-object v0, p0, Lrj;->f:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lrj;->g:I

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lrj;->b:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lrj;->c:Lho;

    new-instance v0, Ljp;

    const-string v1, "securesmslog"

    const-string v2, "secure_mms_pdu"

    const-string v3, "secure_mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lrj;->d:Ljp;

    new-instance v0, Lhq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lrj;->e:Lhq;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lrj;->f:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lrj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lrj;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lrj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lrj;
    .locals 1

    sget-object v0, Lrj;->a:Lrj;

    if-nez v0, :cond_0

    new-instance v0, Lrj;

    invoke-direct {v0}, Lrj;-><init>()V

    sput-object v0, Lrj;->a:Lrj;

    :cond_0
    sget-object v0, Lrj;->a:Lrj;

    return-object v0
.end method

.method static synthetic b(Lrj;)Lho;
    .locals 1

    iget-object v0, p0, Lrj;->c:Lho;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lrj;)Ljp;
    .locals 1

    iget-object v0, p0, Lrj;->d:Ljp;

    return-object v0
.end method

.method static synthetic d(Lrj;)Lhq;
    .locals 1

    iget-object v0, p0, Lrj;->e:Lhq;

    return-object v0
.end method

.method static synthetic e(Lrj;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lrj;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lrj;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lrj;->g:I

    return v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lrj;->f:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrj;->f:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput v0, p0, Lrj;->g:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lrk;

    invoke-direct {v1, p0, v2}, Lrk;-><init>(Lrj;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lrj;->f:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrj;->f:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    iput v0, p0, Lrj;->g:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lrl;

    invoke-direct {v1, p0, v2}, Lrl;-><init>(Lrj;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lrj;->b:Landroid/content/Context;

    invoke-static {v1}, Lft;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "ss_"

    invoke-static {v3, v1}, Lrj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "sc_"

    invoke-static {v4, v1}, Lrj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lrj;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lrj;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
