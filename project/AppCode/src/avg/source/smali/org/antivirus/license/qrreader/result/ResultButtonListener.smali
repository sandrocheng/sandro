.class public final Lorg/antivirus/license/qrreader/result/ResultButtonListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final index:I

.field private final resultHandler:Lorg/antivirus/license/qrreader/result/ResultHandler;


# direct methods
.method public constructor <init>(Lorg/antivirus/license/qrreader/result/ResultHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/license/qrreader/result/ResultButtonListener;->resultHandler:Lorg/antivirus/license/qrreader/result/ResultHandler;

    iput p2, p0, Lorg/antivirus/license/qrreader/result/ResultButtonListener;->index:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/license/qrreader/result/ResultButtonListener;->resultHandler:Lorg/antivirus/license/qrreader/result/ResultHandler;

    iget v1, p0, Lorg/antivirus/license/qrreader/result/ResultButtonListener;->index:I

    invoke-virtual {v0, v1}, Lorg/antivirus/license/qrreader/result/ResultHandler;->handleButtonPress(I)V

    return-void
.end method
