.class Landroid/support/v4/a/v;
.super Landroid/support/v4/a/ab;
.source "ModernAsyncTask.java"


# instance fields
.field final synthetic a:Landroid/support/v4/a/t;


# direct methods
.method constructor <init>(Landroid/support/v4/a/t;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Landroid/support/v4/a/v;->a:Landroid/support/v4/a/t;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/a/ab;-><init>(Landroid/support/v4/a/u;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/a/v;->a:Landroid/support/v4/a/t;

    invoke-static {v0}, Landroid/support/v4/a/t;->a(Landroid/support/v4/a/t;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 123
    iget-object v0, p0, Landroid/support/v4/a/v;->a:Landroid/support/v4/a/t;

    iget-object v1, p0, Landroid/support/v4/a/v;->a:Landroid/support/v4/a/t;

    iget-object v2, p0, Landroid/support/v4/a/v;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/support/v4/a/t;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/a/t;->a(Landroid/support/v4/a/t;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
