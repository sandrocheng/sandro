.class final Lcom/keniu/security/process/w;
.super Landroid/os/Handler;
.source "ProcessWhiteSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/keniu/security/process/w;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/keniu/security/process/w;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/keniu/security/process/w;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 93
    new-instance v0, Lcom/keniu/security/process/z;

    iget-object v1, p0, Lcom/keniu/security/process/w;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    invoke-direct {v0, v1}, Lcom/keniu/security/process/z;-><init>(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V

    .line 94
    invoke-virtual {v0}, Lcom/keniu/security/process/z;->a()V

    .line 95
    invoke-virtual {v0}, Lcom/keniu/security/process/z;->notifyDataSetChanged()V

    .line 96
    iget-object v1, p0, Lcom/keniu/security/process/w;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v1, v1, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    :cond_0
    return-void
.end method
