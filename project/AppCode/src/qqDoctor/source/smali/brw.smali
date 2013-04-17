.class final Lbrw;
.super Ljava/lang/Object;

# interfaces
.implements Lacj$a;


# instance fields
.field private synthetic a:Lbrp;


# direct methods
.method constructor <init>(Lbrp;)V
    .locals 0

    iput-object p1, p0, Lbrw;->a:Lbrp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbrw;->a:Lbrp;

    invoke-static {v0}, Lbrp;->D(Lbrp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Lms;)V
    .locals 1

    iget-object v0, p0, Lbrw;->a:Lbrp;

    invoke-static {v0, p1}, Lbrp;->a(Lbrp;Lms;)V

    iget-object v0, p0, Lbrw;->a:Lbrp;

    invoke-static {v0}, Lbrp;->T(Lbrp;)V

    return-void
.end method

.method public final b(Lms;)V
    .locals 0

    return-void
.end method
