.class final Lcom/ijinshan/kinghelper/firewall/aw;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ijinshan/kinghelper/firewall/au;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/au;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/aw;->d:Lcom/ijinshan/kinghelper/firewall/au;

    iput-wide p2, p0, Lcom/ijinshan/kinghelper/firewall/aw;->a:J

    iput-object p4, p0, Lcom/ijinshan/kinghelper/firewall/aw;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/ijinshan/kinghelper/firewall/aw;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 184
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ijinshan/kinghelper/firewall/aw;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/aw;->d:Lcom/ijinshan/kinghelper/firewall/au;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/au;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-wide v2, p0, Lcom/ijinshan/kinghelper/firewall/aw;->a:J

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/aw;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ijinshan/kinghelper/firewall/aw;->c:Ljava/lang/String;

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;IJLjava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method
