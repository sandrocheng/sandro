.class final Lcom/jxphone/mosecurity/a/b;
.super Ljava/lang/Object;
.source "Commons.java"

# interfaces
.implements Lcom/jxphone/a/a/h;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/jxphone/mosecurity/a/b;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/jxphone/mosecurity/a/b;->b:J

    iput-object p4, p0, Lcom/jxphone/mosecurity/a/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jxphone/mosecurity/a/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 878
    iget-object v0, p0, Lcom/jxphone/mosecurity/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Lcom/keniu/security/a;->aS()V

    .line 882
    iget-object v0, p0, Lcom/jxphone/mosecurity/a/b;->a:Landroid/content/Context;

    iget-wide v0, p0, Lcom/jxphone/mosecurity/a/b;->b:J

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->a(J)V

    .line 884
    iget-object v0, p0, Lcom/jxphone/mosecurity/a/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/jxphone/mosecurity/a/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/jxphone/mosecurity/a/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jxphone/mosecurity/a/a;->e:J

    .line 889
    iget-object v0, p0, Lcom/jxphone/mosecurity/a/b;->a:Landroid/content/Context;

    const-string v1, "report_flag"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 891
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 892
    const-string v1, "report_timer"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 894
    const-string v1, "report_uuid_imei"

    iget-object v2, p0, Lcom/jxphone/mosecurity/a/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 895
    const-string v1, "report_uuid_imsi"

    iget-object v2, p0, Lcom/jxphone/mosecurity/a/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 896
    const-string v1, "report_lasttime"

    iget-wide v2, p0, Lcom/jxphone/mosecurity/a/b;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 897
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    sput-boolean v4, Lcom/jxphone/mosecurity/a/a;->c:Z

    .line 900
    return-void
.end method
