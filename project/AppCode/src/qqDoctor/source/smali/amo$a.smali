.class final Lamo$a;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lamo;


# direct methods
.method constructor <init>(Lamo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lamo$a;->b:Lamo;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lamo$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lamo$a;->b:Lamo;

    iget-object v1, p0, Lamo$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lamo;->a(Lamo;Ljava/lang/String;)V

    return-void
.end method
