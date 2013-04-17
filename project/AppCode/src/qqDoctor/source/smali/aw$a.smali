.class final Law$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Law;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Law;


# direct methods
.method private constructor <init>(Law;)V
    .locals 0

    iput-object p1, p0, Law$a;->a:Law;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Law;B)V
    .locals 0

    invoke-direct {p0, p1}, Law$a;-><init>(Law;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Law$a;->a:Law;

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    new-instance v1, Lbb;

    invoke-direct {v1}, Lbb;-><init>()V

    invoke-virtual {v0}, Lcw;->h()I

    move-result v1

    invoke-virtual {v0}, Lcw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lde;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lbb;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Law$a;->a:Law;

    const/16 v2, 0x2019

    const/16 v3, 0x1002

    iget-object v4, v1, Law;->b:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, v1, Law;->b:Landroid/os/Handler;

    invoke-virtual {v4, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Law;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
