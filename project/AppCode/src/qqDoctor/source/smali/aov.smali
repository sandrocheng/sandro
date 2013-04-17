.class final Laov;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Laou;


# direct methods
.method constructor <init>(Laou;)V
    .locals 0

    iput-object p1, p0, Laov;->a:Laou;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->a(Laou;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b0abf

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_2
    iget-object v0, p0, Laov;->a:Laou;

    iget-object v1, p0, Laov;->a:Laou;

    invoke-static {v1}, Laou;->c(Laou;)Laou$a;

    move-result-object v1

    invoke-static {v0, v1}, Laou;->a(Laou;Laou$a;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->d(Laou;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->e(Laou;)V

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0, v2}, Laou;->a(Laou;Z)Z

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->f(Laou;)Z

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->g(Laou;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->h(Laou;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->e(Laou;)V

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0, v2}, Laou;->a(Laou;Z)Z

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->f(Laou;)Z

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->g(Laou;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->i(Laou;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Laov;->a:Laou;

    iget-object v1, p0, Laov;->a:Laou;

    invoke-static {v1}, Laou;->j(Laou;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laou;->a(Laou;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Laov;->a:Laou;

    iget-object v1, p0, Laov;->a:Laou;

    invoke-static {v1}, Laou;->j(Laou;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laou;->a(Laou;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->k(Laou;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Laov;->a:Laou;

    iget-object v1, p0, Laov;->a:Laou;

    invoke-static {v1}, Laou;->c(Laou;)Laou$a;

    move-result-object v1

    invoke-static {v0, v1}, Laou;->a(Laou;Laou$a;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Laov;->a:Laou;

    invoke-static {v1}, Laou;->l(Laou;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Laou;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Laov;->a:Laou;

    invoke-static {v1}, Laou;->m(Laou;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Laov;->a:Laou;

    invoke-static {v1}, Laou;->m(Laou;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Laov;->a:Laou;

    invoke-static {v1}, Laou;->m(Laou;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->m(Laou;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->n(Laou;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0aad

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Laov;->a:Laou;

    invoke-virtual {v0}, Laou;->onBackClick()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->o(Laou;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->o(Laou;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :sswitch_b
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0, v2}, Laou;->a(Laou;Z)Z

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->f(Laou;)Z

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->g(Laou;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->p(Laou;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->e(Laou;)V

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0, v2}, Laou;->a(Laou;Z)Z

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->f(Laou;)Z

    iget-object v0, p0, Laov;->a:Laou;

    invoke-static {v0}, Laou;->g(Laou;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
        0x6b -> :sswitch_5
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0xcf -> :sswitch_4
        0xd0 -> :sswitch_2
        0x12c -> :sswitch_6
        0x12d -> :sswitch_3
        0x12e -> :sswitch_2
        0x130 -> :sswitch_2
        0x131 -> :sswitch_5
        0x190 -> :sswitch_0
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
        0x194 -> :sswitch_2
        0x195 -> :sswitch_5
        0x1f5 -> :sswitch_8
        0x1f6 -> :sswitch_9
        0x1f7 -> :sswitch_a
        0x1f8 -> :sswitch_b
        0x257 -> :sswitch_c
    .end sparse-switch
.end method
