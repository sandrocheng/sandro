.class Lcom/antivirus/ui/scan/results/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/antivirus/ui/scan/results/k;

.field final synthetic d:Lcom/antivirus/ui/scan/results/d;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/results/d;IILcom/antivirus/ui/scan/results/k;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    iput p2, p0, Lcom/antivirus/ui/scan/results/e;->a:I

    iput p3, p0, Lcom/antivirus/ui/scan/results/e;->b:I

    iput-object p4, p0, Lcom/antivirus/ui/scan/results/e;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Z)Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    iget v1, p0, Lcom/antivirus/ui/scan/results/e;->a:I

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    iget v1, p0, Lcom/antivirus/ui/scan/results/e;->b:I

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    sget-object v2, Lcom/antivirus/ui/scan/results/i;->a:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/i;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->c:Lcom/antivirus/ui/scan/results/k;

    check-cast v0, Lcom/antivirus/ui/scan/results/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/r;->a()Lcom/antivirus/ui/scan/results/s;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    sget-object v2, Lcom/antivirus/ui/scan/results/i;->b:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/i;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Landroid/content/Context;Lcom/antivirus/ui/scan/results/s;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->c:Lcom/antivirus/ui/scan/results/k;

    check-cast v0, Lcom/antivirus/ui/scan/results/b;

    sget-object v1, Lcom/antivirus/ui/scan/results/h;->a:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/b;->b()Lcom/antivirus/ui/scan/results/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/antivirus/ui/scan/results/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;)I

    move-result v1

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v2}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/d;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/scan/results/d;->a(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->a()V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/e;->d:Lcom/antivirus/ui/scan/results/d;

    sget-object v1, Lcom/antivirus/ui/scan/results/i;->c:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/i;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
