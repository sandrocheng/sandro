.class final Lcom/ijinshan/cleaner/ad;
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
    .line 162
    iput-object p1, p0, Lcom/ijinshan/cleaner/ad;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ijinshan/cleaner/ad;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    const-string v1, "mg_unst_continue"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/ijinshan/cleaner/ad;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->finish()V

    .line 168
    return-void
.end method
