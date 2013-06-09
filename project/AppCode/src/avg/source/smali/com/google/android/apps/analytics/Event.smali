.class Lcom/google/android/apps/analytics/Event;
.super Ljava/lang/Object;


# static fields
.field static final INSTALL_EVENT_CATEGORY:Ljava/lang/String; = "__##GOOGLEINSTALL##__"

.field static final ITEM_CATEGORY:Ljava/lang/String; = "__##GOOGLEITEM##__"

.field static final PAGEVIEW_EVENT_CATEGORY:Ljava/lang/String; = "__##GOOGLEPAGEVIEW##__"

.field static final TRANSACTION_CATEGORY:Ljava/lang/String; = "__##GOOGLETRANSACTION##__"


# instance fields
.field final accountId:Ljava/lang/String;

.field final action:Ljava/lang/String;

.field private adHitId:I

.field private anonymizeIp:Z

.field final category:Ljava/lang/String;

.field customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

.field final eventId:J

.field private item:Lcom/google/android/apps/analytics/Item;

.field final label:Ljava/lang/String;

.field private randomVal:I

.field final screenHeight:I

.field final screenWidth:I

.field private timestampCurrent:I

.field private timestampFirst:I

.field private timestampPrevious:I

.field private transaction:Lcom/google/android/apps/analytics/Transaction;

.field private useServerTime:Z

.field private userId:I

.field final value:I

.field private visits:I


# direct methods
.method constructor <init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/apps/analytics/Event;->eventId:J

    iput-object p3, p0, Lcom/google/android/apps/analytics/Event;->accountId:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/apps/analytics/Event;->randomVal:I

    iput p5, p0, Lcom/google/android/apps/analytics/Event;->timestampFirst:I

    iput p6, p0, Lcom/google/android/apps/analytics/Event;->timestampPrevious:I

    iput p7, p0, Lcom/google/android/apps/analytics/Event;->timestampCurrent:I

    iput p8, p0, Lcom/google/android/apps/analytics/Event;->visits:I

    iput-object p9, p0, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/apps/analytics/Event;->action:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/apps/analytics/Event;->label:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/apps/analytics/Event;->value:I

    iput p14, p0, Lcom/google/android/apps/analytics/Event;->screenHeight:I

    iput p13, p0, Lcom/google/android/apps/analytics/Event;->screenWidth:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/analytics/Event;->userId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/Event;->useServerTime:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/analytics/Event;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/Event;->eventId:J

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/apps/analytics/Event;->randomVal:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/apps/analytics/Event;->timestampFirst:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/apps/analytics/Event;->timestampPrevious:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/apps/analytics/Event;->timestampCurrent:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/apps/analytics/Event;->visits:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/apps/analytics/Event;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/apps/analytics/Event;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/apps/analytics/Event;->value:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/apps/analytics/Event;->screenWidth:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/apps/analytics/Event;->screenHeight:I

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/apps/analytics/Event;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/apps/analytics/Event;->adHitId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/analytics/Event;->adHitId:I

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/apps/analytics/Event;->userId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/analytics/Event;->userId:I

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/apps/analytics/Event;->anonymizeIp:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/analytics/Event;->anonymizeIp:Z

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/apps/analytics/Event;->useServerTime:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/analytics/Event;->useServerTime:Z

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/Event;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/Event;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/Event;->transaction:Lcom/google/android/apps/analytics/Transaction;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/Event;->transaction:Lcom/google/android/apps/analytics/Transaction;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/Event;->item:Lcom/google/android/apps/analytics/Item;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/Event;->item:Lcom/google/android/apps/analytics/Item;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 15

    const-wide/16 v1, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-direct/range {v0 .. v14}, Lcom/google/android/apps/analytics/Event;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method getAdHitId()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Event;->adHitId:I

    return v0
.end method

.method getAnonymizeIp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/Event;->anonymizeIp:Z

    return v0
.end method

.method public getCustomVariableBuffer()Lcom/google/android/apps/analytics/CustomVariableBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Event;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    return-object v0
.end method

.method public getItem()Lcom/google/android/apps/analytics/Item;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Event;->item:Lcom/google/android/apps/analytics/Item;

    return-object v0
.end method

.method getRandomVal()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Event;->randomVal:I

    return v0
.end method

.method getTimestampCurrent()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Event;->timestampCurrent:I

    return v0
.end method

.method getTimestampFirst()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Event;->timestampFirst:I

    return v0
.end method

.method getTimestampPrevious()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Event;->timestampPrevious:I

    return v0
.end method

.method public getTransaction()Lcom/google/android/apps/analytics/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Event;->transaction:Lcom/google/android/apps/analytics/Transaction;

    return-object v0
.end method

.method getUseServerTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/Event;->useServerTime:Z

    return v0
.end method

.method getUserId()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Event;->userId:I

    return v0
.end method

.method getVisits()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Event;->visits:I

    return v0
.end method

.method public isSessionInitialized()Z
    .locals 2

    iget v0, p0, Lcom/google/android/apps/analytics/Event;->timestampFirst:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAdHitId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/Event;->adHitId:I

    return-void
.end method

.method setAnonymizeIp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/Event;->anonymizeIp:Z

    return-void
.end method

.method public setCustomVariableBuffer(Lcom/google/android/apps/analytics/CustomVariableBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/Event;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    return-void
.end method

.method public setItem(Lcom/google/android/apps/analytics/Item;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    const-string v1, "__##GOOGLEITEM##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to add an item to an event of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/analytics/Event;->item:Lcom/google/android/apps/analytics/Item;

    return-void
.end method

.method setRandomVal(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/Event;->randomVal:I

    return-void
.end method

.method setTimestampCurrent(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/Event;->timestampCurrent:I

    return-void
.end method

.method setTimestampFirst(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/Event;->timestampFirst:I

    return-void
.end method

.method setTimestampPrevious(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/Event;->timestampPrevious:I

    return-void
.end method

.method public setTransaction(Lcom/google/android/apps/analytics/Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    const-string v1, "__##GOOGLETRANSACTION##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to add a transction to an event of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/analytics/Event;->transaction:Lcom/google/android/apps/analytics/Transaction;

    return-void
.end method

.method setUseServerTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/Event;->useServerTime:Z

    return-void
.end method

.method setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/Event;->userId:I

    return-void
.end method

.method setVisits(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/Event;->visits:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/apps/analytics/Event;->eventId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " random:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/Event;->randomVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampCurrent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/Event;->timestampCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampPrevious:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/Event;->timestampPrevious:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/Event;->timestampFirst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/Event;->visits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/Event;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/Event;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/Event;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/Event;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/Event;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
