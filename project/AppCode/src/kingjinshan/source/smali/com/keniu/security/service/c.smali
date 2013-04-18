.class final Lcom/keniu/security/service/c;
.super Ljava/lang/Object;
.source "ReportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/service/ReportService;


# direct methods
.method constructor <init>(Lcom/keniu/security/service/ReportService;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/keniu/security/service/c;->a:Lcom/keniu/security/service/ReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/keniu/security/service/c;->a:Lcom/keniu/security/service/ReportService;

    invoke-static {v0}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method
