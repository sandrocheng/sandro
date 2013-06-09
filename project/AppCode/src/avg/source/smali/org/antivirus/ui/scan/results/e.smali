.class final Lorg/antivirus/ui/scan/results/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lorg/antivirus/ui/scan/results/j;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lorg/antivirus/ui/scan/results/d;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/results/d;IILorg/antivirus/ui/scan/results/j;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    iput p2, p0, Lorg/antivirus/ui/scan/results/e;->a:I

    iput p3, p0, Lorg/antivirus/ui/scan/results/e;->b:I

    iput-object p4, p0, Lorg/antivirus/ui/scan/results/e;->c:Lorg/antivirus/ui/scan/results/j;

    iput-object p5, p0, Lorg/antivirus/ui/scan/results/e;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;)Z

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    iget v1, p0, Lorg/antivirus/ui/scan/results/e;->a:I

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    iget v1, p0, Lorg/antivirus/ui/scan/results/e;->b:I

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->c:Lorg/antivirus/ui/scan/results/j;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    sget-object v2, Lorg/antivirus/ui/scan/results/i;->a:Lorg/antivirus/ui/scan/results/i;

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/i;)V

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->c:Lorg/antivirus/ui/scan/results/j;

    check-cast v0, Lorg/antivirus/ui/scan/results/q;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/q;->a:Lorg/antivirus/ui/scan/results/r;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    sget-object v2, Lorg/antivirus/ui/scan/results/i;->b:Lorg/antivirus/ui/scan/results/i;

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/i;)V

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;Landroid/content/Context;Lorg/antivirus/ui/scan/results/r;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->c:Lorg/antivirus/ui/scan/results/j;

    check-cast v0, Lorg/antivirus/ui/scan/results/b;

    sget-object v1, Lorg/antivirus/ui/scan/results/h;->a:[I

    iget-object v2, v0, Lorg/antivirus/ui/scan/results/b;->a:Lorg/antivirus/ui/scan/results/c;

    invoke-virtual {v2}, Lorg/antivirus/ui/scan/results/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/b;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/d;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/d;)I

    move-result v1

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v2}, Lorg/antivirus/ui/scan/results/d;->c(Lorg/antivirus/ui/scan/results/d;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->c()V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/e;->e:Lorg/antivirus/ui/scan/results/d;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/e;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
