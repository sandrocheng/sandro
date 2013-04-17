.class public final Law;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Law$a;,
        Law$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field c:Ljava/lang/String;

.field d:Landroid/os/Handler;

.field private e:Lay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Law;->a:Landroid/content/Context;

    iput-object v0, p0, Law;->b:Landroid/os/Handler;

    iput-object v0, p0, Law;->e:Lay;

    iput-object v0, p0, Law;->c:Ljava/lang/String;

    iput-object v0, p0, Law;->d:Landroid/os/Handler;

    iput-object p1, p0, Law;->a:Landroid/content/Context;

    iput-object p2, p0, Law;->b:Landroid/os/Handler;

    iput-object v0, p0, Law;->e:Lay;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x2019

    const/16 v1, 0x1001

    iget-object v2, p0, Law;->b:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Law$a;

    invoke-direct {v1, p0, v3}, Law$a;-><init>(Law;B)V

    const-string v2, "thread_check_login_state"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x201a

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_0

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    const/16 v1, 0x1002

    const/16 v2, 0x200f

    iget-object v3, p0, Law;->b:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    const/16 v2, 0x1001

    iget-object v3, p0, Law;->b:Landroid/os/Handler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Law;->b:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    iput-object p1, p0, Law;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Law$b;

    invoke-direct {v3, p0, v0}, Law$b;-><init>(Law;B)V

    const-string v0, "thread_verify_pimpwd"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    move v0, v1

    goto :goto_1
.end method
