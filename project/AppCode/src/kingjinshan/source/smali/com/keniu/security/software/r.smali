.class final Lcom/keniu/security/software/r;
.super Landroid/os/Handler;
.source "SoftwareManager2.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const v3, 0x7f080126

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    new-instance v1, Lcom/keniu/security/software/af;

    iget-object v2, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {v1, v2}, Lcom/keniu/security/software/af;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/af;)Lcom/keniu/security/software/af;

    .line 250
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->d(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0, v3}, Lcom/keniu/security/software/SoftwareManager2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0, v3}, Lcom/keniu/security/software/SoftwareManager2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    new-instance v1, Lcom/keniu/security/software/aj;

    iget-object v2, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    iget-object v3, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v3}, Lcom/keniu/security/software/SoftwareManager2;->e(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/software/aj;-><init>(Lcom/keniu/security/software/SoftwareManager2;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/aj;)Lcom/keniu/security/software/aj;

    .line 257
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    new-instance v1, Lcom/keniu/security/software/aj;

    iget-object v2, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    iget-object v3, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v3}, Lcom/keniu/security/software/SoftwareManager2;->f(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/software/aj;-><init>(Lcom/keniu/security/software/SoftwareManager2;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/aj;)Lcom/keniu/security/software/aj;

    .line 258
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    new-instance v1, Lcom/keniu/security/software/aj;

    iget-object v2, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    iget-object v3, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v3}, Lcom/keniu/security/software/SoftwareManager2;->g(Lcom/keniu/security/software/SoftwareManager2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/software/aj;-><init>(Lcom/keniu/security/software/SoftwareManager2;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->c(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/aj;)Lcom/keniu/security/software/aj;

    .line 260
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    new-instance v1, Lcom/keniu/security/software/au;

    iget-object v2, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {v1, v2}, Lcom/keniu/security/software/au;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Ljava/util/Comparator;)V

    .line 261
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0, v4}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;I)I

    goto :goto_0

    .line 223
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 224
    iget-object v1, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1, v0}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;I)I

    .line 225
    iget-object v1, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 226
    iget-object v1, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0}, Lcom/keniu/security/software/o;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v2}, Lcom/keniu/security/software/SoftwareManager2;->c(Lcom/keniu/security/software/SoftwareManager2;)I

    invoke-static {v1, v0}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 230
    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    const v1, 0x7f0b0744

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    :cond_3
    if-ne v0, v4, :cond_0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/aj;

    iget-object v1, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->c(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/software/aj;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    iget-object v0, p0, Lcom/keniu/security/software/r;->a:Lcom/keniu/security/software/SoftwareManager2;

    const v1, 0x7f0b0749

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 241
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
