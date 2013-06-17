.class Lcom/antivirus/ui/callmessagefilter/fragment/aj;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/ai;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/aj;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ai;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/aj;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ai;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/ai;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    const-string v1, "ASC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/aj;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ai;

    iget-object v3, v3, Lcom/antivirus/ui/callmessagefilter/fragment/ai;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-wide v5, v3, Lcom/antivirus/ui/callmessagefilter/fragment/v;->i:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/fragment/aj;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ai;

    iget-object v5, v5, Lcom/antivirus/ui/callmessagefilter/fragment/ai;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-wide v5, v5, Lcom/antivirus/ui/callmessagefilter/fragment/v;->i:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/fragment/aj;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ai;

    iget-object v5, v5, Lcom/antivirus/ui/callmessagefilter/fragment/ai;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-virtual {v5}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v6

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/aj;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
