.class final Lakq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lakp;


# direct methods
.method constructor <init>(Lakp;)V
    .locals 0

    iput-object p1, p0, Lakq;->a:Lakp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->co()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lakq;->a:Lakp;

    invoke-static {v0}, Lakp;->a(Lakp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakq;->a:Lakp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lakp;->a(Lakp;Z)Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf;

    iget-object v1, p0, Lakq;->a:Lakp;

    invoke-static {v1, v0}, Lakp;->a(Lakp;Lmf;)V

    iget-object v0, p0, Lakq;->a:Lakp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lakp;->a(Lakp;Z)Z

    goto :goto_0
.end method
