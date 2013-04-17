.class final Lzb;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lza;


# direct methods
.method constructor <init>(Lza;)V
    .locals 0

    iput-object p1, p0, Lzb;->a:Lza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lih;->a(Landroid/content/Context;)Lih;

    move-result-object v0

    invoke-virtual {v0}, Lih;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzb;->a:Lza;

    iget-object v0, v0, Lza;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Lxi$a;)V

    :cond_0
    return-void
.end method
