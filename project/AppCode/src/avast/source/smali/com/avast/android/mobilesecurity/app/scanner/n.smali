.class Lcom/avast/android/mobilesecurity/app/scanner/n;
.super Ljava/lang/Object;
.source "ReportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    iput-wide p2, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->a:J

    iput-wide p4, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->b(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;)Lcom/avast/android/generic/notification/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->a:J

    iput-wide v1, v0, Lcom/avast/android/generic/notification/a;->b:J

    .line 185
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->b(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;)Lcom/avast/android/generic/notification/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->b:J

    iput-wide v1, v0, Lcom/avast/android/generic/notification/a;->c:J

    .line 186
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->a(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;)Lcom/avast/android/generic/notification/j;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/n;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->b(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;)Lcom/avast/android/generic/notification/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/a;)V

    .line 187
    return-void
.end method
