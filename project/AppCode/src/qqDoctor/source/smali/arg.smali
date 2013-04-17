.class final Larg;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Larf;


# direct methods
.method constructor <init>(Larf;)V
    .locals 0

    iput-object p1, p0, Larg;->a:Larf;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Larg;->a:Larf;

    invoke-virtual {v0}, Larf;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Larg;->a:Larf;

    invoke-static {v0, p2, v1}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    return-void
.end method
