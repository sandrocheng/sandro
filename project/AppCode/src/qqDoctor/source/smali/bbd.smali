.class final Lbbd;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbbc;


# direct methods
.method constructor <init>(Lbbc;)V
    .locals 0

    iput-object p1, p0, Lbbd;->a:Lbbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lbbd;->a:Lbbc;

    iget-object v0, v0, Lbbc;->a:Lbbb;

    iget-object v0, v0, Lbbb;->a:Lbax;

    invoke-static {v0, p1}, Lbax;->b(Lbax;I)I

    iget-object v0, p0, Lbbd;->a:Lbbc;

    iget-object v0, v0, Lbbc;->a:Lbbb;

    iget-object v0, v0, Lbbb;->a:Lbax;

    invoke-static {v0}, Lbax;->e(Lbax;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
