.class public final Laht;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)V
    .locals 0

    iput-object p1, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v3}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a(Z)Z

    goto :goto_0

    :pswitch_1
    invoke-static {v6}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a(Z)Z

    iget-object v0, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a()Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v10, Landroid/content/Intent;

    iget-object v0, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lmu;

    const-wide/16 v1, 0x0

    const-string v4, ""

    iget-object v5, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v5}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v7, v3

    move v8, v6

    invoke-direct/range {v0 .. v9}, Lmu;-><init>(JILjava/lang/String;IIIILjava/util/List;)V

    const-string v1, "data"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->c(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laht;->a:Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->b(Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
