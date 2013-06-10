.class final Lorg/antivirus/ui/protection/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/FileScannerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/g;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const-string v0, ""

    long-to-int v1, p4

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/antivirus/ui/protection/g;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/protection/FileScannerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->scrollTo(II)V

    iget-object v1, p0, Lorg/antivirus/ui/protection/g;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {v1}, Lorg/antivirus/ui/protection/FileScannerActivity;->a(Lorg/antivirus/ui/protection/FileScannerActivity;)Lorg/antivirus/ui/protection/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/protection/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antivirus/ui/protection/g;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {v1, v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->a(Lorg/antivirus/ui/protection/FileScannerActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "/"

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/ui/protection/g;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-static {}, Lorg/antivirus/ui/protection/FileScannerActivity;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "/Music"

    goto :goto_0

    :pswitch_4
    const-string v0, "/Video"

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
