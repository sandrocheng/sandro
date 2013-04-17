.class final Lapb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laou;


# direct methods
.method constructor <init>(Laou;)V
    .locals 0

    iput-object p1, p0, Lapb;->a:Laou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lapb;->a:Laou;

    invoke-static {v0}, Laou;->j(Laou;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lapb;->a:Laou;

    invoke-static {v1, v0}, Laou;->c(Laou;Ljava/lang/String;)V

    return-void
.end method
