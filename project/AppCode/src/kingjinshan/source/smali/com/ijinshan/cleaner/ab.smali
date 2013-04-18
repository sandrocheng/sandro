.class final Lcom/ijinshan/cleaner/ab;
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
    .line 93
    iput-object p1, p0, Lcom/ijinshan/cleaner/ab;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ijinshan/cleaner/ab;->a:Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->finish()V

    .line 97
    return-void
.end method
