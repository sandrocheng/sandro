.class final Lcom/ijinshan/kinghelper/firewall/el;
.super Ljava/lang/Object;
.source "SmsBackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/el;->a:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/el;->a:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->finish()V

    .line 126
    return-void
.end method
