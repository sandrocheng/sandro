.class final Lbaz;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbax;


# direct methods
.method constructor <init>(Lbax;)V
    .locals 0

    iput-object p1, p0, Lbaz;->a:Lbax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lbaz;->a:Lbax;

    invoke-static {v0, p1}, Lbax;->b(Lbax;I)I

    iget-object v0, p0, Lbaz;->a:Lbax;

    invoke-static {v0}, Lbax;->b(Lbax;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
