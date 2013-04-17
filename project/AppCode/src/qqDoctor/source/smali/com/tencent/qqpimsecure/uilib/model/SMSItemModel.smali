.class public Lcom/tencent/qqpimsecure/uilib/model/SMSItemModel;
.super Ljava/lang/Object;


# instance fields
.field private DateText:Ljava/lang/String;

.field private SMSText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SMSItemModel;->DateText:Ljava/lang/String;

    return-object v0
.end method

.method public getSMSText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SMSItemModel;->SMSText:Ljava/lang/String;

    return-object v0
.end method

.method public setDateText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/SMSItemModel;->DateText:Ljava/lang/String;

    return-void
.end method

.method public setSMSText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/model/SMSItemModel;->SMSText:Ljava/lang/String;

    return-void
.end method
