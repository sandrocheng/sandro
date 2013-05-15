.class Lcom/avast/android/mobilesecurity/app/scanner/l;
.super Ljava/lang/Object;
.source "ReportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/l;->a:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/l;->a:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/l;->a:Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    const v2, 0x7f0c0261

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    return-void
.end method
