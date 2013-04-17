.class final Law$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Law;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Law;


# direct methods
.method private constructor <init>(Law;)V
    .locals 0

    iput-object p1, p0, Law$b;->a:Law;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Law;B)V
    .locals 0

    invoke-direct {p0, p1}, Law$b;-><init>(Law;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Law$b;->a:Law;

    iget-object v0, v0, Law;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Law$b;->a:Law;

    sget-object v1, Lde;->b:Landroid/content/Context;

    iput-object v1, v0, Law;->a:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Law$b;->a:Law;

    iget-object v1, p0, Law$b;->a:Law;

    iget-object v1, v1, Law;->a:Landroid/content/Context;

    new-instance v2, Lax;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lax;-><init>(Law;Landroid/os/Looper;)V

    iput-object v2, v0, Law;->d:Landroid/os/Handler;

    new-instance v0, Lat;

    iget-object v1, p0, Law$b;->a:Law;

    iget-object v1, v1, Law;->a:Landroid/content/Context;

    iget-object v2, p0, Law$b;->a:Law;

    iget-object v2, v2, Law;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lat;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Law$b;->a:Law;

    iget-object v2, v2, Law;->c:Ljava/lang/String;

    const-string v3, "Login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pimpwd enter strPimPWD = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lav;

    invoke-direct {v3, v0, v1, v2}, Lav;-><init>(Lat;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lav;->start()V

    const-string v0, "Login"

    const-string v1, "pimpwd leave"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
