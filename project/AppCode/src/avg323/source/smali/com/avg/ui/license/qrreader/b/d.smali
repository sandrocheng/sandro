.class public final Lcom/avg/ui/license/qrreader/b/d;
.super Lcom/avg/ui/license/qrreader/b/a;


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/avg/ui/license/qrreader/b/d;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/avg/ui/license/qrreader/b/a;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    sget v0, Lcom/avg/ui/general/g;->result_text:I

    return v0
.end method
