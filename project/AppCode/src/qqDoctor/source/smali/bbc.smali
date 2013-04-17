.class final Lbbc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbbb;


# direct methods
.method constructor <init>(Lbbb;)V
    .locals 0

    iput-object p1, p0, Lbbc;->a:Lbbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbbc;->a:Lbbb;

    iget-object v0, v0, Lbbb;->a:Lbax;

    invoke-static {v0}, Lbax;->d(Lbax;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbbd;

    invoke-direct {v1, p0}, Lbbd;-><init>(Lbbc;)V

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Lxi$a;)V

    return-void
.end method
