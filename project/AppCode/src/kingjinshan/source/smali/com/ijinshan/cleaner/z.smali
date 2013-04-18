.class final Lcom/ijinshan/cleaner/z;
.super Ljava/lang/Object;
.source "MainCleanActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/MainCleanActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/MainCleanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ijinshan/cleaner/z;->a:Lcom/ijinshan/cleaner/MainCleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    packed-switch p2, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/z;->a:Lcom/ijinshan/cleaner/MainCleanActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/MainCleanActivity;->a(Lcom/ijinshan/cleaner/MainCleanActivity;)Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/cleaner/z;->a:Lcom/ijinshan/cleaner/MainCleanActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/MainCleanActivity;->a(Lcom/ijinshan/cleaner/MainCleanActivity;)Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/cleaner/z;->a:Lcom/ijinshan/cleaner/MainCleanActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/MainCleanActivity;->a(Lcom/ijinshan/cleaner/MainCleanActivity;)Lcom/ijinshan/cleaner/adapter/CustomTabHost;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x7f080108
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
