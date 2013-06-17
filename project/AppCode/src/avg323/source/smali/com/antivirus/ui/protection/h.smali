.class Lcom/antivirus/ui/protection/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/h;->a:Lcom/antivirus/ui/protection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const-string v0, ""

    long-to-int v1, p4

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/antivirus/ui/protection/h;->a:Lcom/antivirus/ui/protection/a;

    invoke-virtual {v1}, Lcom/antivirus/ui/protection/a;->a()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->scrollTo(II)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/h;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v1}, Lcom/antivirus/ui/protection/a;->b(Lcom/antivirus/ui/protection/a;)Lcom/antivirus/ui/protection/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/protection/n;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/ui/protection/h;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v1, v0}, Lcom/antivirus/ui/protection/a;->a(Lcom/antivirus/ui/protection/a;Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/antivirus/ui/protection/h;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->d(Lcom/antivirus/ui/protection/a;)Ljava/lang/String;

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

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

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

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
