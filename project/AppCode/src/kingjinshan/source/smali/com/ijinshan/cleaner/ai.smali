.class final Lcom/ijinshan/cleaner/ai;
.super Ljava/lang/Object;
.source "MonitorUninstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/ijinshan/cleaner/ai;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ijinshan/cleaner/ai;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    iget-object v0, p0, Lcom/ijinshan/cleaner/ai;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->b(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    .line 252
    return-void
.end method
