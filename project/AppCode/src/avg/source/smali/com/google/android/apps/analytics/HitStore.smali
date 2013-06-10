.class interface abstract Lcom/google/android/apps/analytics/HitStore;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearReferrer()V
.end method

.method public abstract deleteHit(J)V
.end method

.method public abstract getNumStoredHits()I
.end method

.method public abstract getReferrer()Lcom/google/android/apps/analytics/Referrer;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getStoreId()I
.end method

.method public abstract getVisitorCustomVar(I)Ljava/lang/String;
.end method

.method public abstract getVisitorId()Ljava/lang/String;
.end method

.method public abstract loadExistingSession()V
.end method

.method public abstract peekHits()[Lcom/google/android/apps/analytics/Hit;
.end method

.method public abstract peekHits(I)[Lcom/google/android/apps/analytics/Hit;
.end method

.method public abstract putEvent(Lcom/google/android/apps/analytics/Event;)V
.end method

.method public abstract setAnonymizeIp(Z)V
.end method

.method public abstract setReferrer(Ljava/lang/String;)Z
.end method

.method public abstract setSampleRate(I)V
.end method

.method public abstract startNewVisit()V
.end method
