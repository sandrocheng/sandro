.class final Lcom/ijinshan/cleaner/ac;
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
    .line 100
    iput-object p1, p0, Lcom/ijinshan/cleaner/ac;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/ac;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    iget-object v1, p0, Lcom/ijinshan/cleaner/ac;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-object v0, p0, Lcom/ijinshan/cleaner/ac;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->finish()V

    .line 108
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ijinshan/cleaner/ac;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ijinshan/cleaner/ac;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-virtual {v1}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->finish()V

    throw v0
.end method
