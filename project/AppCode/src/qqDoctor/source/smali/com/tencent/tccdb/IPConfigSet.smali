.class public Lcom/tencent/tccdb/IPConfigSet;
.super Ljava/lang/Object;


# instance fields
.field public iDefaultIPNums:Ljava/lang/String;

.field public iIPnum:Ljava/lang/String;

.field public iMSelfdefIPNum:Ljava/lang/String;

.field public iMyNumLocation:Ljava/lang/String;

.field public iNotUseIPAreas:Ljava/lang/String;

.field public iNotUseIPNums:Ljava/lang/String;

.field public iSelfdefIPNum:Ljava/lang/String;

.field public iUseIPnumStyle:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tccdb/IPConfigSet;->iUseIPnumStyle:I

    iput-object p2, p0, Lcom/tencent/tccdb/IPConfigSet;->iIPnum:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tccdb/IPConfigSet;->iMyNumLocation:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tccdb/IPConfigSet;->iNotUseIPAreas:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tccdb/IPConfigSet;->iNotUseIPNums:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/tccdb/IPConfigSet;->iDefaultIPNums:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/tccdb/IPConfigSet;->iSelfdefIPNum:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/tccdb/IPConfigSet;->iMSelfdefIPNum:Ljava/lang/String;

    return-void
.end method
