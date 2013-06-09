.class final Lorg/antivirus/ui/protection/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/l;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/l;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/n;->a:Lorg/antivirus/ui/protection/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/ui/protection/n;->a:Lorg/antivirus/ui/protection/l;

    invoke-static {v1, v0}, Lorg/antivirus/ui/protection/l;->a(Lorg/antivirus/ui/protection/l;Ljava/io/File;)V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/ui/protection/n;->a:Lorg/antivirus/ui/protection/l;

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/l;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/antivirus/ui/protection/n;->a:Lorg/antivirus/ui/protection/l;

    invoke-static {v1, v0}, Lorg/antivirus/ui/protection/l;->b(Lorg/antivirus/ui/protection/l;Ljava/io/File;)V

    goto :goto_0
.end method
