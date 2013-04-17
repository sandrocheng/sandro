.class final Lbdn;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbdk;


# direct methods
.method constructor <init>(Lbdk;)V
    .locals 0

    iput-object p1, p0, Lbdn;->a:Lbdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lbdn;->a:Lbdk;

    invoke-virtual {v0, p1}, Lbdk;->a(I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lbdn;->a:Lbdk;

    invoke-static {v0}, Lbdk;->a(Lbdk;)Lho;

    move-result-object v0

    invoke-virtual {v0, v1}, Lho;->z(Z)V

    iget-object v0, p0, Lbdn;->a:Lbdk;

    invoke-static {v0}, Lbdk;->a(Lbdk;)Lho;

    move-result-object v0

    invoke-virtual {v0, v1}, Lho;->d(Z)V

    invoke-static {v1}, Lxi;->a(Z)V

    iget-object v0, p0, Lbdn;->a:Lbdk;

    invoke-static {v0}, Lbdk;->c(Lbdk;)Ljf;

    move-result-object v0

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbdn;->a:Lbdk;

    invoke-static {v0}, Lbdk;->d(Lbdk;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbdn;->a:Lbdk;

    invoke-static {v0}, Lbdk;->d(Lbdk;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbdn;->a:Lbdk;

    invoke-static {v0}, Lbdk;->e(Lbdk;)V

    goto :goto_0
.end method
