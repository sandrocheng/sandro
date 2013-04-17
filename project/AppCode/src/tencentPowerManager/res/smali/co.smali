.class final Lco;
.super Ls$a;


# instance fields
.field private synthetic a:Lcn;


# direct methods
.method constructor <init>(Lcn;)V
    .locals 0

    iput-object p1, p0, Lco;->a:Lcn;

    invoke-direct {p0}, Ls$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lco;->a:Lcn;

    iget-object v0, v0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-virtual {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->finish()V

    iget-object v0, p0, Lco;->a:Lcn;

    iget-object v0, v0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    iget-object v1, p0, Lco;->a:Lcn;

    iget-object v1, v1, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
