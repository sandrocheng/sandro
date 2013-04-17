.class public abstract Lar;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field public b:Landroid/content/Context;

.field protected c:Lde;

.field public d:Lfx;

.field e:I

.field f:I

.field public g:Lfz;

.field protected h:Lfy;

.field public i:Landroid/os/Handler;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lar;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lar;->c:Lde;

    iput-object v1, p0, Lar;->d:Lfx;

    iput v0, p0, Lar;->e:I

    iput v0, p0, Lar;->f:I

    new-instance v0, Lfz;

    invoke-direct {v0}, Lfz;-><init>()V

    iput-object v0, p0, Lar;->g:Lfz;

    new-instance v0, Lfy;

    invoke-direct {v0, p0}, Lfy;-><init>(Lar;)V

    iput-object v0, p0, Lar;->h:Lfy;

    new-instance v0, Las;

    invoke-direct {v0, p0}, Las;-><init>(Lar;)V

    iput-object v0, p0, Lar;->i:Landroid/os/Handler;

    iput-object p1, p0, Lar;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lar;->j:Z

    iput-boolean p3, p0, Lar;->k:Z

    return-void
.end method

.method public static synthetic a(Lar;)I
    .locals 1

    iget v0, p0, Lar;->f:I

    return v0
.end method

.method public static synthetic b(Lar;)Z
    .locals 1

    iget-boolean v0, p0, Lar;->j:Z

    return v0
.end method

.method static synthetic c(Lar;)Z
    .locals 1

    iget-boolean v0, p0, Lar;->k:Z

    return v0
.end method

.method static synthetic d(Lar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Context;Lfx;Law;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lau;

    invoke-direct {v1, p3}, Lau;-><init>(Law;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public abstract a(Lfx;)V
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lar;->f:I

    return v0
.end method

.method public abstract b(Lfx;)V
.end method

.method public final c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lav;

    invoke-direct {v1, p0}, Lav;-><init>(Lar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method
