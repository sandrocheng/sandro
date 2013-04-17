.class final Lbhp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbhn;


# direct methods
.method constructor <init>(Lbhn;)V
    .locals 0

    iput-object p1, p0, Lbhp;->a:Lbhn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbhp;->a:Lbhn;

    invoke-static {v0}, Lbhn;->a(Lbhn;)Landroid/widget/EditText;

    move-result-object v0

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
